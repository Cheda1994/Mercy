class Contact < ApplicationMailer
  default from: "chedster@gmail.com"

  def new_session


  end

  def new_user(email)
    @email=email
    mail(to: "#{@email}" , subject: "Welcome to MFH")
  end
end