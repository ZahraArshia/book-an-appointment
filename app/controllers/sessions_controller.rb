class SessionsController < Devise::SessionsController
  def create
    user = User.find_by_name(sign_in_params[:name])

    if user && user.valid_name?(sign_in_params[:name])
      @current_user = user
    else
      render json: { errors: { 'username' => ['is invalid'] } }, status: :unprocessable_entity
    end
  end
end