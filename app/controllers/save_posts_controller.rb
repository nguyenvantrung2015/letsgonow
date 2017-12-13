class SavePostsController < ApplicationController
	def create
    @micropost = Micropost.find(params[:micropost_id])
    @savePost = @micropost.save_posts.build(save_post_params) # strong parameters
    if @savePost.save
      flash[:success] = "Post updated"
      redirect_to @micropost
    else 
      flash[:success] = "like fails"
      redirect_to @micropost
    end
  end
  def destroy

    @savePost = SavePost.find(params[:id])
    @micropost = @savePost.micropost
    @savePost.destroy
    respond_to do |format|
      format.html do
        flash[:success] = 'like deleted.'
        redirect_to @micropost
      end
      format.js # JavaScript response
    end
  end  
  private

  def save_post_params
    params.require(:save_post).permit(:user_id,:micropost_id)
  end
end
