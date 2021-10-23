class PrefecturesController < ApplicationController
  def index
    @posts = Post.all.order(id: 'DESC')
  end

  private

  def post_params
    params.require(:post).permit(:prefecture_id, :genre_id, :image, :title).merge(user_id: current_user.id)
  end
end
