class UsersController < ApplicationController
  def create
    @user = User.where(email: params[:email]).first_or_create
    if @user.persisted?
      render json: { status: true, user: @user.as_json }
    else
      render json: { status: false }
    end
  end
end
