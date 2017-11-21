class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
    render json: @tweets
  end

  def create
    puts params
  end
end
