class UsersController < ApplicationController

  before_action :set_user, only: [:show, :edit, :update]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to new_session_path, notice: "新規アカウントを作成しました！"
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to user_path, notice: "編集しました！"
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :nickname, :email, :image, :image_cache, :password, :password_confirmation, :image_x, :image_y, :image_w, :image_h)
  end

  def set_user
    @user = User.find(params[:id])
  end

end
