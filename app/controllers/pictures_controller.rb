class PicturesController < ApplicationController

  before_action :set_picture, only: [:show, :edit, :update, :destroy, :favorite_list]

  def index
    @pictures = Picture.all
  end

  def new
    @picture = Picture.new
  end

  def create
    @picture = current_user.pictures.build(picture_params)
    if params[:back]
      render :new
    else
      if @picture.save
        redirect_to pictures_path, notice: "投稿しました！"
      else
        render :new
      end
    end
  end

  def show
    @favorite = current_user.favorites.find_by(picture_id: @picture.id)
  end

  def edit
    unless @picture.user_id == current_user.id
      redirect_to pictures_path, notice: "自分以外の投稿は編集できません"
    end
  end

  def update
    if @picture.user_id == current_user.id
      if @picture.update(picture_params)
        redirect_to pictures_path, notice: "編集しました！"
      else
        render :edit
      end
    else
      redirect_to pictures_path, notice: "自分以外の投稿は編集できません"
    end
  end

  def destroy
    if @picture.user_id == current_user.id
      @picture.destroy
      redirect_to pictures_path, notice:"削除しました！"
    else
      redirect_to pictures_path, notice: "自分以外の投稿は削除できません"
    end
  end

  def confirm
    @picture = current_user.pictures.build(picture_params)
    render :new if @picture.invalid?
  end

  def favorite_list
    @pictures = Picture.all
  end


  private

  def picture_params
    params.require(:picture).permit(:content, :image, :image_cache)
  end

  def set_picture
    @picture = Picture.find(params[:id])
  end

end
