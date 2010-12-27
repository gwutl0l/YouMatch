class PagesController < ApplicationController
  require 'rubygems'
  require 'youtube_g'
  require 'musix_match'
  require 'mbws'

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

  def search
    @title   = "Results"
    search  = params['q']
    @i = +1
    client   = YouTubeG::Client.new
    @youtube = client.videos_by(:query => "#{search}", :page => "#{@i}", :per_page => 1)
  end
  
  def artistsearch
    @search = Release.find(:query => params['q'])
  end

end
