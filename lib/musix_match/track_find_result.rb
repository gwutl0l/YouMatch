module MusixMatch
  class TrackFindResult    
    attr_reader :status_code, :execute_time, :track
    
    def initialize(response)
      parse_response(response)
    end        
  
  protected
    
    def parse_response(response)
      parse_response_header(response)
      parse_response_body(response)
    end

    def parse_response_header(response)
      [:status_code, :execute_time].each do |key|
        instance_variable_set "@#{key}", response['message']['header'][key.to_s]
      end
    end  
  
    def parse_response_body(response)
      if status_code == 200
        @track = Models::Track.new(response['message']['body']['track'])
      end
    end
  end
end