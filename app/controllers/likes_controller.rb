class LikesController < ApplicationController
    def create
      @tweet = Tweet.find(params[:tweet_id])
      @tweet.likes.create(like_params)
      render json: {status: true}
    end

    def like_params
      params.permit(:is_liked, :user_id)
    end
end
