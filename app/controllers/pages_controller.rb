class PagesController < ApplicationController
  require 'rubygems'
  require 'youtube_g'
  require 'musix_match'
  require 'mbws'
  require 'last_fm'

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
    @title    = "Results"
    search    = params['q']
    @quer     = search
    client    = YouTubeG::Client.new
    @youtube  = client.videos_by(:query => "#{search}", :page => 1, :per_page => 1)
    @msearch  = Search.music_hash
    lfm       = LastFM.new()
    @similar  = lfm.artist.getSimilar(:artist => search, :limit => 5)
    @simitr   = lfm.track.getSimilar(:track => 'tik tok', :artist => 'ke$ha', :limit => 5)
  end
end
