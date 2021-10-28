class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index]

  def index
    @posts = Post.all.order(id: 'DESC')
    @prefectures = Prefecture.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    if @post.save
      redirect_to prefectures_path
    else
      render :new
    end
  end

  def show
    @post = Post.find(params[:id])
    @user = @post.user_id
  end



  private

  def post_params
    params.require(:post).permit(:prefecture47_id, :genre_id, :image, :title).merge(user_id: current_user.id)
  end
end
