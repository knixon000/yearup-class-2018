require 'sinatra'
require 'geocoder'
require 'forecast_io'

get '/weather' do
  #get the latitude and longitude
  lat_lon =  Geocoder.search("nyc").first.coordinates

  # get a weather forecast
  ForecastIO.api_key = 'a65700d3d69f77123ba1cbece8365328'
  forecast = ForecastIO.forecast(lat_lon[0], lat_lon[1])
  return forecast["currently"]["summary"]
  @weather = forecast["currently"]["summary"]
  erb :index
end

#
# get '/random' do
#   ## when someone asks for localhost:3000/random
#   erb :index
# end
#
# get '/frank-says' do
#   ##when someone asks for localhost:3000/frank-says
#   '<h1>Diddy</h1>'
# end
