class PostsController < ApplicationController
  respond_to :json

  before_action :validate_json_token, only: :create

  def index
    @posts = Post.all
    respond_with @posts
  end

  def show
    @post = Post.find(params[:id])
    respond_with @post
  end

  def create

  end

  private
    def validate_json_token
      # Header syntax: 'Authorization: Bearer token_string'
      token = request.headers['Authorization'].split(' ').last
      payload, header = JWT.decode(token, Rails.application.secrets.secret_key_jwt)
      @user = User.find(payload['user_id'])
    end
end
