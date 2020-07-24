class LikesController < ApplicationController
  # ログインユーザ制限
  before_action :authenticate_user!

  def create
    @like = current_user.likes.build(like_params)
    @post = @like.post
    if @like.save
      respond_to :js # 非同期でレスポンスを返す為js形式に切り替え
    end
  end

  def destroy
    @like = Like.find_by(id: params[:id])
    @post = @like.post
    if @like.destroy
      respond_to :js
    end
  end

  private

  def like_params
    params.permit(:post_id) # どの投稿にいいねしたのか取得
  end
end
