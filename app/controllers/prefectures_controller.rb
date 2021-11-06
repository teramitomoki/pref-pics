class PrefecturesController < ApplicationController
  def index
    @posts = Post.all.order(id: 'DESC')
  end

  def show
    @post = Post.find(params[:id])
    @user = @post.user_id
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
  end

  private

  def post_params
    params.require(:post).permit(:prefecture47_id, :genre_id, :image, :title).merge(user_id: current_user.id)
  end
end
