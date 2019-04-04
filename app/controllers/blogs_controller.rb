class BlogsController < ApplicationController


# before_action :authenticate_user!

  def index
    @blogs = Blog.order("id DESC").page(params[:page]).per(5)
  end


  def new
  end


  def create
    Blog.create(blogs_params)
  end

  def destroy
    blog = Blogs.find(params[:id])
    if blog.user_id == current_user.id
       blog.destroy
    end
  end


  private
  def blogs_params
    params.permit(:name, :text, :image)
  end
end
