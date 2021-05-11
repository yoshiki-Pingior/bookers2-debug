class ThanksMailer < ApplicationMailer

  def complete_registration(email, name)
    @name = name
    mail to: email, subject: "登録完了のお知らせ"
  end
end
