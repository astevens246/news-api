require 'net/http'
require 'uri'

class NewsController < ApplicationController
  def index
    topic = params[:topic]
    uri = URI("https://newsapi.org/v2/everything?q=#{topic}&apiKey=#{ENV['NEWS_API_KEY']}")
    response = Net::HTTP.get(uri)
    @news = JSON.parse(response)
  end
end