class PostsController < ApplicationController
  def new
  	@post = Post.new
  end

  def index 
  	@post = Post.first
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to root_url
  end

  def show
  	@post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.likes = @post.likes+1
    @post.save
    if @post.next
      redirect_to(@post.next)
    else
      flash[:notice] = "You're out of new adorable dogs to look at"
      redirect_to(@post)
    end 
  end

  def create
  	@post = Post.new(permit_post)
    @post.user_id = current_user.id
  	if @post.save
  		flash[:success] = "Success!"
  		redirect_to(@post)
  	else
  		flash[:error] = @post.errors.full_messages
  		redirect_to new_post_path
    end
  end

  private  
    def permit_post
  	    params.require(:post).permit(:image, :names, :description, :likes)
    end

end
