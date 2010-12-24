class PagesController < ApplicationController
  def home
  end

  def contact
    @title = "Contact Us"
  end

  def about
    @title = "Who are we?"
  end

  def help
    @title = "Hop hop and away!"
  end

  def youtube
    @title   = "Results"
    @search  = params['q']
    @youtube = ""
  end

end
