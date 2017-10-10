class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @user_count = User.member
    @users = @user_count.search(params[:user_name], params[:user_email])
                        .order(created_at: :desc).page(params[:page]).per(10)
    respond_to do |format|
      format.js { @users.reload }
      format.html
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(secure_params)
    @user.skip_confirmation!
    @user.confirm
    if @user.save
      flash[:notice] = "user was successfully created"
      redirect_to users_path
    else
      flash[:error] = @user.errors.full_messages.join(", ")
      render 'new'
    end
  end

  def show
    unless current_user.admin?
      unless @user == current_user
        redirect_to :back, :alert => "Access denied."
      end
    end
  end

  def edit
  end

  def update
    @user.facebook_uid = nil if @user.email != secure_params[:email]
    old_email = @user.email
    @user.assign_attributes(secure_params)
    @user.skip_reconfirmation! if old_email != secure_params[:email]
    if @user.save
      flash[:notice] = "You have successfully updated user"
      redirect_to users_path
    else
      flash[:error] = @user.errors.full_messages.join(", ")
      render 'edit'
    end
  end

  def destroy
    if @user.member?
      if @user.destroy
        redirect_to users_path, :notice => "User deleted."
      else
        redirect_to users_path, :alert => "Delete fail."
      end
    else
      redirect_to users_path, :alert => "Can't delete user admin."
    end
  end

  private
  def set_user
    @user = User.find(params[:id])
  end

  def secure_params
    if params[:user][:password].blank? && params[:user][:password_confirmation].blank? 
      params.require(:user).permit(:username, :email, :role)
    else
      params.require(:user).permit(:username, :email, :role, :password, :password_confirmation)
    end

  end

end
