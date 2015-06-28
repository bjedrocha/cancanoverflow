class PostsController < ApplicationController
  before_filter :authenticate_user!

  # GET /posts
  def index
  end

  # GET /posts/:id
  def show
    @post = Post.find( params[:id] )
    authorize! :show, @post
  end
end