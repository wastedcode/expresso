module EXFoursquare
  class Venue
    def initialize(foursquare)
      @foursquare = foursquare
    end

    def search(options={})
      puts @foursquare.get('venues/search', options)
    end
  end
end
