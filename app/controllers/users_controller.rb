class UsersController < ApplicationController
<<<<<<< HEAD
  before_action :logged_in_user, only: %i(index edit update destroy)
  before_action :find_user, only: %i(show edit update destroy)
  before_action :correct_user, only: %i(edit update)
  before_action :admin_user, only: :destroy

  def index
    @users = User.paginate page: params[:page]
  end
=======
>>>>>>> abc7fabad2aef0d457ad80f5b3d22a8ed4829cf5

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if user.save
<<<<<<< HEAD
      user.send_activation_email
      flash[:info] = t "please_check_activate"
      redirect_to root_url
=======
      log_in :user
      flash[:success] = t "welcome"
      redirect_to user
>>>>>>> abc7fabad2aef0d457ad80f5b3d22a8ed4829cf5
    else
      render :new
    end
  end

<<<<<<< HEAD
  def show; end

  def edit; end

  def update
    if user.update_attributes user_params
      flash[:success] = t "profile_update"
      redirect_to user
    else
      render :edit
    end
  end

  def destroy
    user.destroy
    flash[:success] = t "user_destroy"
    redirect_to users_url
  end

  private

=======
  def show
    @user = User.find_by id: params[:id]

    return if user
    flash[:success] = t "error_user"
    redirect_to root_path
  end

  private
>>>>>>> abc7fabad2aef0d457ad80f5b3d22a8ed4829cf5
  attr_reader :user

  def user_params
    params.require(:user).permit :name, :email, :password,
      :password_confirmation
<<<<<<< HEAD
  end

  def logged_in_user
    return if logged_in?
    store_location
    flash[:danger] = t "please_login"
    redirect_to login_url
  end

  def correct_user
    redirect_to root_url unless user.current_user? current_user
  end

  def admin_user
    redirect_to root_url unless current_user.admin?
  end

  def find_user
    @user = User.find_by id: params[:id]

    return if user
    flash[:success] = t "error_user"
    redirect_to root_path
=======
>>>>>>> abc7fabad2aef0d457ad80f5b3d22a8ed4829cf5
  end
end
