class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session

  def authenticate_user_from_token!
    user_token = params[:user_token].presence
    user       = user_token && User.find_by_authentication_token(user_token.to_s)
    sign_in user, store: false if user
  end
end
