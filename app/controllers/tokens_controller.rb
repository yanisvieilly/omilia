class TokensController < ApplicationController
  def create
    @user = User.find_by(email: params[:token][:email])
    if @user && @user.authenticate(params[:token][:password])
      @token = { token: JWT.encode({ 'user_id' => @user.id }, Rails.application.secrets.secret_key_jwt) }
      render json: @token
    else
      render json: { message: 'Invalid credentials' }, status: 401
    end
  end
end
