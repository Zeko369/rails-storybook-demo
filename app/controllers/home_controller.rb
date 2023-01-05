class HomeController < ApplicationController
  def index
    if Rails.env.development?
      redirect_to "http://localhost:8081"
    else
      redirect_to "/docs"
    end
  end
end