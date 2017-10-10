class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
  skip_before_action :verify_authenticity_token, if: -> { controller_name == 'sessions' && action_name == 'create' }
  before_action :authenticate_user!
  before_action :banned

  private
  def banned
    if user_signed_in? && current_user.role!="admin"
      sign_out current_user
      flash[:danger]="You are not an admin"
      redirect_to new_user_session_path
    end
  end
end
