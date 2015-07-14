class Contact < ApplicationMailer


  def contact_us(email , body , title)
    # default to:"cheda1994@gmail.com"
    @email=email
    @body=body
    @title=title
    mail(from: "#{@email}" ,  to:"cheda1994@gmail.com", subject: "#{@title}")
  end

  def conntact_unswer(email)
    @email = email
      mail(to: "#{@email}" , subject: "Feedback")
  end

  def new_user(email)
    # default from: "chedster@gmail.com"
    @email=email
    mail(to: "#{@email}" , subject: "Welcome to MFH")
  end
end
