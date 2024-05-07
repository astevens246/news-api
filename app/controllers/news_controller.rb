require 'net/http'
require 'uri'

class NewsController < ApplicationController
    def index
        topic = params[:topic]
        uri = URI("https://newsapi.org/v2/everything?q=#{topic}&apiKey=#{ENV['NEWS_API_KEY']}")
        response = Net::HTTP.get(uri)
        news_stories = JSON.parse(response)['articles']
        
        news_stories.each do |story|
            News.create(title: story['title'], author: story['author'], content: story['content'])
        end
        
        @news = News.all
        end

  def create
  end

  def update
  end

  def destroy
  end

end