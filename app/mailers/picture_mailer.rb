class PictureMailer < ApplicationMailer
  def picture_mail(picture)
    @picture = picture
    mail to: "voyager.nasa0928@gmail.com", subject: "投稿確認メール"
  end
end
