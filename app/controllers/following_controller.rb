class FollowingController < ApplicationController
  attr_reader :user

  before_action :logged_in_user, :find_user, only: %i(index)

  def index
    @title = t "following"
    @users = user.following.paginate page: params[:page]
    render "show_follow"
  end

  private

  def find_user
    @user = User.find_by id: params[:id]

    return if user
    flash[:success] = t "error_user"
    redirect_to root_path
  end
end
