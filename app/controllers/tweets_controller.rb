class TweetsController < ApplicationController
    def index
        @tweets = Tweet.all
    end
    
    def new
        @tweet = Tweet.new
    end
    
    def create
        @tweet = Tweet.new(message: params[:tweet][:message])
        if @tweet.save
            redirect_to '/'
        else
            render 'new'
        end
    end
    
    def destroy
        tweet = Tweet.find(params[:id])
        tweet.destroy
        redirect_to '/'
    end
    
end
