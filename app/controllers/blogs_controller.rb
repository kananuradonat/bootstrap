

class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_params)
    if @blog.save
     redirect_to blogs_path, notice: "You have created new blog!"
      
    else
      render 'new'
    end
  end

  def show
    @blog = Blog.find(params[:id])   # 重複！
  end

  def edit
    @blog = Blog.find(params[:id])   # 重複！
  end

  def update
    @blog = Blog.find(params[:id])   # 重複！
    if @blog.update(blog_params)
      redirect_to blogs_path, notice: "you have created a blog"
    else
      render 'edit'
    end
  end

  private

  def blog_params
    params.require(:blog).permit(:name, :email,:content)
  end
  
  def destroy
  @blog.destroy
  redirect_to blogs_path, notice: "You have deleted the blog!"
end

 before_action :set_blog, only: [:show, :edit, :update, :destroy]
 
 def set_blog
  @blog = Blog.find(params[:id])
end



end