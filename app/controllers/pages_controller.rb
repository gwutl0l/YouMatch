class PagesController < ApplicationController
  require 'rubygems'
  require 'youtube_g'
  require 'musix_match'

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
    search  = params['q']
    @i = +1
    client   = YouTubeG::Client.new
    @youtube = client.videos_by(:query => "#{search}", :page => "#{@i}", :per_page => 1)
  end
  
  def musixmatch
    MusixMatch::API::Base.api_key = '64d41a1b7134ab24fb2cc577a0aa8e84'
    search = params['q']
    response = MusixMatch.search_track(:q => 'Pantera')
      if response.status_code == 200 && lyrics = response.lyrics
        track_id = "#{track.track_id}"
        query = MusixMatch.get_lyrics(track_id)
        @lyrics = puts lyrics.lyrics_body
      end
  end

  def musixsearch
    response = MusixMatch.search_track(:q_artist => 'Pantera')
      if response.status_code == 200
        response.each do |track|
         puts "#{track.track_id}: #{track.track_name} (#{track.artist_name})"
       end
    end
  end

end
