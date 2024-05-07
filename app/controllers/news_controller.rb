class NewsController < ApplicationController
    def index
      topic = params[:topic]
      response = HTTParty.get("https://newsapi.org/v2/everything?q=#{topic}&apiKey=#{ENV['NEWS_API_KEY']}")
      render json: response.parsed_response
    end
  end