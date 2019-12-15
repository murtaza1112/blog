class PostsController < ApplicationController
  
def index
     @posts=Post.all
  end
  def show
     @post1=Post.find(params[:id])
  end
  def new
    @post = Post.new
    @category= Category.all
  end

  def update
        @post=Post.find(params[:id])

        if @post.update(post_params)
          redirect_to posts_path,:notice => "Your notice has been updated"
       #if updatesuccessfull redirect to homepage and display notice,add code in layiut for notice
    else
      #else render the same page,new
      render "update"
    end
  
  end

  def create
    params.permit!
    @post = Post.new(params[:post])
    if @post.save
       redirect_to posts_path,:notice => "Your notice has been saved"
       #if save successfull redirect to homepage and display notice,add code in layiut for notice
    else
      #else render the same page,new
      render "new"

     end 
    
  end

  

  def destroy
    @post1=Post.find(params[:id])
    @post1.destroy
    redirect_to posts_path,:notice => "Your notice has been deleted"


  end

  def edit
    @post1=Post.find(params[:id])
  end

   private

       def post_params
           params.require(:post).permit(:title, :content)
       end
end


  