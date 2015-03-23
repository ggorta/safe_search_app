require 'httparty'
# require 'flickr'
class HomeController < ApplicationController

  def index
    # Call http://api.theysaidso.com/qod.json and get JSON response
    response = HTTParty.get('http://api.forismatic.com/api/1.0/?method=getQuote&key=457653&format=json&lang=en')

    # Quote to show is inside response.contents.quote
    @quoteStr = response['quoteText']

   # @flickr_api= '1f012f3e9cc5b28d42ebfe203097107f'
   # @flickr_secret='761c7a82a443a6bc'

   # flickr = Flickr.new(@flickr_api)
   # params = Hash.new()
   # params[:safe_search] = 3
   # params[:format] = "json"
   # params[:tags] = "moon"

   # photos = flickr.photos_search(params)
   # # $stdout.puts(photos)
  end

  def show
  end

end
