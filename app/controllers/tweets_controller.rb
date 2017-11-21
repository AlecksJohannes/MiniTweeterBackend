class TweetsController < ApplicationController
  def index
    @tweets = Tweet.where(user_id: params[:id])
    puts params
    render json: @tweets
  end

  def create
    @tweet = Tweet.create(tweet_params)
    render json: {status: true}
  end

  def tweet_params
    params.permit(:description, :user_id)
  end
end
