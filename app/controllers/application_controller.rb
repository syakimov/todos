class ApplicationController < ActionController::Base
  def authenticate
    redirect_to new_session_path unless current_user.signed_in?
  end

  def sign_in(email)
    session[:current_email] = email
  end

  def current_user
    User.new(session[:current_email])
  end
end
