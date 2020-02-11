class PostsController < ApplicationController
  def index
    @posts = Post.all;  
  end

  def new
    @post = Post.new;
  end

  def create
    @post = Post.new(params[:post].permit(:title, :body, :category_id));
    if @post.save
      redirect_to posts_path, :notice => "Submitted"
    else
      render "new"
    end
  end

  def update

  end

  def edit

  end

  def show
    @post = Post.find(params[:id]);
  end

  def destroy

  end
end
