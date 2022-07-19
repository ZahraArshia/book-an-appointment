class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
  before_action :current_user

  def current_user
    User.first
  end
end
