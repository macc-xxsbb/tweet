class PostsController < ApplicationController
  
  def index  # indexアクションを定義した
    @posts = Post.all  # 全てのレコードを@postsに代入
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(post_params)
    redirect_to root_path
  end 
  
  private
  def post_params
    params.require(:post).permit(:content).merge(user_id: current_user.id)
  end
end
