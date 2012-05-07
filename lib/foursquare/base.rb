module EXFoursquare
  class Base
    # Constants
    API = "https://api.foursquare.com/v2/"

    # Constructor
    def initialize(*args)
      case args.size
      when 1
        @access_token = args.first
      when 2
        @client_id, @client_secret = args
      else
        raise ArgumentError, "either access_token or (client_id + client_secret) should be passed"
      end
    end

    def venues
      EXFoursquare::Venue.new(self)
    end

    def get(path, query_params={})
      require 'uri'
      require 'net/http'
      require 'net/https'
 
      add_credential_params(query_params)

      # create a URI object
      param_array = []
      query_params.each {|key, value| param_array << "#{key}=#{value}"}
      api_url = API << path << '?' << param_array.join("&")
      uri = URI.parse(api_url)
 
      # create an http object with ssl (for https)
      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = true
      http.verify_mode = OpenSSL::SSL::VERIFY_NONE
      http.set_debug_output($stdout)
      
      # create the GET request
      request = Net::HTTP::Get.new(uri.request_uri) 
     
      # execute the request
      response = http.request(request)

      # get and return the results
      #result =  ActiveSupport::JSON.decode(response.body)
    end

    private
 
    def add_credential_params(params)
      if @access_token
        params.merge!(:oauth_token => @access_token)
      else
        params.merge!(:client_id => @client_id, :client_secret => @client_secret)
      end
    end
  end
end
