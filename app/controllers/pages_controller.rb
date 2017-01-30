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
end
