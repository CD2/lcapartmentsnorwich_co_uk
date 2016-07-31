class Admin::BlogsController < AdminController

  before_action :set_blog, only: [:edit, :update, :destroy]

  def index
    @blogs = Blog.all
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_params)
    if @blog.valid?
      @blog.save!
      flash[:success] = "Blog Created"
      redirect_to @blog
    else
      render :new
    end
  end

  def edit
  end

  def update
    @blog.assign_attributes(blog_params)
    if @blog.valid?
      @blog.save!
      flash[:success] = "Blog Updated"
      redirect_to admin_blogs_path
    else
      render :edit
    end
  end

  def destroy
    @blog.destroy!
    flash[:success] = "Blog Destroyed"
    redirect_to admin_blogs_path
  end


  private

  def blog_params
    params.require(:blog).permit(:name, :body)
  end

  def set_blog
    @blog = Blog.find(params[:id])
  end

end
