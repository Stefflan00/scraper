require 'sinatra'
require 'nokogiri'
require 'open-uri'

get '/' do
  url = "http://www.930.com/concerts"
  data = Nokogiri::HTML(open(url))
  @concerts = data.css('.list-view-item')
  erb :show
end
