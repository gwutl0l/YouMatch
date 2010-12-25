class PagesController < ApplicationController
  require 'rubygems'
  require 'youtube_g'
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
    client = YouTubeG::Client.new
    @youtube = client.videos_by(:query => "#{@search}")
  end
end
