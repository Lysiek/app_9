class FollowersController < ApplicationController

  before_action :logged_in_user, :find_user, only: %i(index)

  def index
    @title = t "followers"
    @users = user.followers.paginate page: params[:page]
    render "show_follow"
  end

  private

  attr_reader :user

  def find_user
    @user = User.find_by id: params[:id]

    return if user
    flash[:success] = t "error_user"
    redirect_to root_path
  end
end
