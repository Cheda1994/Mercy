class HomeController < ApplicationController

  def index

 end

  def donate
    @donate=Random.rand(2)
    if @donate == 1
      redirect_to "https://join.greenpeace.ru/index.phtml"
    elsif @donate == 2
      redirect_to "http://noob-club.ru"

    end
  end

  def contact_us_form
    @email = params[:email]
    @title = params[:title]
    @body = params[:body]
    if Contact.contact_us(@email,@body,@title).deliver_later
    Contact.conntact_unswer(@email).deliver_later
    end
    redirect_to root_path
  end


end
