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
    end

    def create
        @news = News.new(create_news_params)
      
        if @news.save
          redirect_to news_index_path
        else
          render json: @news.errors, status: :unprocessable_entity        
        end
      end

    def edit
        @news_story = News.find(params[:id])
      end

    def update
    @news_story = News.find(params[:id])

    if @news_story.update(news_params)
        redirect_to news_index_path, notice: 'News was successfully updated.'
    else
        render :edit
    end
    end

  def destroy
    @news_story = News.find(params[:id])
    @news_story.destroy

    redirect_to news_index_path
  end

  private

  def news_params
    params.require(:news).permit(:title, :author, :content, :url)
  end
  
  def create_news_params
    params.permit(:title, :author, :content, :url)
  end

end