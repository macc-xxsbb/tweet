class PostsController < ApplicationController
  
  def index  # indexアクションを定義した
    @posts = Post.all  # 全てのレコードを@postsに代入
  end

  def new
  end

  def create
   @post = Post.new(post_params)
  end 
  
  private
  def post_params
    params.permit(:content)
  end
end
