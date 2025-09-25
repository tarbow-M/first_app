class PostsController < ApplicationController
  def index  # indexアクションを定義した
    # @post = Post.find(1)  # 1番目のレコードを@postに代入
    @posts = Post.all  # すべてのレコードを@postsに代入
  end

  def new  # クリックしたら別ページに遷移するのみのためデータ使った処理なし ⇒ 中身不要
  end

 def create # 投稿データを保存する必要があるため処理を記述
    Post.create(content: params[:content])
    redirect_to "/posts"
  end
end
