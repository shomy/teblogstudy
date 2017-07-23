class BlogsController < ApplicationController
  before_action :set_blog, only:[:edit,:update,:destroy]

  def index
    @blogs = Blog.all
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blogs_params)
    if @blog.save
      redirect_to root_path, notice:"作成完了"
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @blog.update(blogs_params)
      redirect_to root_path, notice:"修正完了"
    else
      render 'edit'
    end
  end

  def destroy
    @blog.destroy
    redirect_to root_path
  end

  private
    def blogs_params
      params.require(:blog).permit(:title, :content)
    end

    def set_blog
      @blog = Blog.find(params[:id])
    end
end