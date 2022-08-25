# frozen_string_literal: true

require_relative 'api_handler'

# Location class
class Location
  include APIHandler

  attr_accessor :lat, :lon, :wind_direction, :country, :zip_code

  def initialize(country = 'us', zip_code = 90_210)
    @country = country
    @zip_code = zip_code
  end

  def fetch_location
    result = get_request("http://api.zippopotam.us/#{country}/#{@zip_code}")
    @lat = result['places'][0]['latitude']
    @lon = result['places'][0]['longitude']
  end

  def fetch_weather
    result = get_request("http://www.7timer.info/bin/api.pl?lon=#{@lon}" \
                          "&lat=#{@lat}&product=astro&output=json")
    @wind_direction = result['dataseries'][0]['wind10m']['direction']
  end

  def wind_info
    fetch_location
    fetch_weather
    p "The wind direction at lon: #{@lon}, lat: #{@lat} is #{@wind_direction}"
  end
end
