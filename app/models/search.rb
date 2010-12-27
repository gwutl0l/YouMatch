class Search < ActiveRecord::Base

  include HTTParty
  base_uri 'http://query.yahooapis.com/v1/public/yql'

  def self.music_search
    self.get("", :query => {:q => "select * from music.track.search where keyword= 'tik tok'",
                            :format => 'json' })
  end

  def self.music_hash
    self.music_search.parsed_response["query"]["results"]["result"]
  end
end
