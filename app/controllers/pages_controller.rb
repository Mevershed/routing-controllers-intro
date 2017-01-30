class PagesController < ApplicationController
  def about
    @header = "What would you like to know?"
  end
  def welcome
    @header = "Welcome to the page!"
  end
  def contest
    @header = "This contest is for nothing!"
  end
  def kitten
    # @header = "KITTENS!"
    requested_size = params[:size]
    @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
  end
end
