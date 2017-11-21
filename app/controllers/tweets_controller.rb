class TweetsController < ApplicationController
  def index
    @tweets = User.find(params[:id]).tweets.includes(:likes).to_json(include: :likes)
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
