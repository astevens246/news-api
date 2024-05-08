require 'net/http'
require 'uri'
# how to search: http://localhost:3000/news/fetch?topic=basketball

class NewsController < ApplicationController
    before_action :authenticate_user!, only: :create

    def fetch
        topic = params[:topic] || 'technology'
        uri = URI("https://newsapi.org/v2/everything?q=#{topic}&apiKey=#{ENV['NEWS_API_KEY']}")
        response = Net::HTTP.get(uri)
        @news_stories = JSON.parse(response)['articles']
        puts "@news_stories: #{@news_stories}"
    end
    
    def index
        @saved_stories = News.all
        puts "@saved_stories: #{@saved_stories}"
    end

    def create
        @news = News.new(news_params)
    
        if @news.save
            redirect_to news_index_path
        else
            render json: @news.errors, status: :unprocessable_entity        
        end
    end

  def update
  end

  def destroy
  end

  private

  def news_params
      params.permit(:title, :author, :content, :url)
  end

end