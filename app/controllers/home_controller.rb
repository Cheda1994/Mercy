class HomeController < ApplicationController
  def index
    posts = Post.all
    @posts = "Forum " + posts.length.to_s+"(posts)"
  end

  def donate
    @donate=Random.rand(2)
    if @donate == 1
      redirect_to "https://join.greenpeace.ru/index.phtml"
    elsif @donate == 2
      redirect_to "http://noob-club.ru"
    end
  end
end
