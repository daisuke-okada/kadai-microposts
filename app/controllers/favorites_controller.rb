class FavoritesController < ApplicationController
  before_action :require_user_logged_in
  
  def create
    like_post = Micropost.find_by(id: params[:micropost_id])
    current_user.like(like_post)
    flash[:success] = "投稿をお気に入りにしました"
    redirect_to root_path
  end

  def destroy
    like_post = Micropost.find_by(id: params[:micropost_id])
    current_user.dislike(like_post)
    flash[:success] = "お気に入りを解除しました"
    redirect_to root_path
  end
  
  
end
