class PagesController < ApplicationController
  before_action :set_kitten_url, only: [:kitten, :kittens]
  def about
    @header = "What would you like to know?"
  end
  def welcome
    @header = "Welcome to the page!"
  end
  def contest
    # @header = "This contest is for nothing!"
    flash[:notice] = "Sorry, the contest has ended"
    redirect_to "/welcome"
  end
  def kitten
    # set_kitten_url
    # @header = "KITTENS!"
    # requested_size = params[:size]
    # @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
  end
  def kittens
    # set_kitten_url
    # requested_size = params[:size]
    # @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
  end
  def set_kitten_url
    requested_size = params[:size]
    @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
  end
  def secrets
    if params[:magic_word] == "boo"
      redirect_to "/about"
    else
      redirect_to "/welcome"
      flash[:alert] = "Sorry, you are not authorized to see that page!"

    end

  end
end
