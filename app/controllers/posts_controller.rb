class PostsController < ApplicationController
  def index # indexアクションを定義した
    @posts = Post.all.order(id: "DESC")
     # 全て（find(1)1番目）のレコードを@postsに代入。これはコントローラーで定義したインスタンス変数を確認するための文字列です"
  end

  def create
    Post.create(content: params[:content])
  end
end