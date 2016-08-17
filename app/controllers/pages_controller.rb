class PagesController < ApplicationController

  def home
    if params[:first_name]
      @message = "Hello #{params[:first_name].capitalize}"
    else
      @message = "Hello"
    end
  end

end
