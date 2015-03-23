require 'httparty'

class HomeController < ApplicationController

  def index
    # Call http://api.theysaidso.com/qod.json and get JSON response
    response = HTTParty.get('http://api.forismatic.com/api/1.0/?method=getQuote&key=457653&format=json&lang=en')

    # Quote to show is inside response.contents.quote
    @quoteStr = response['quoteText']
  end

  def show
  end

end
