class CommentsController < ApplicationController
  def create
    @micropost = Micropost.find(params[:micropost_id])
    @comments= Comment.all
    @comment = @micropost.comments.build(comment_params) # strong parameters
    if @comment.save
      respond_to do |format|
        format.html do
          flash[:success] = 'Comment posted.'
          redirect_to @micropost
        end
        format.js # JavaScript response
      end
    end
  end
  def destroy

    @comment = Comment.find(params[:id])
    @micropost = @comment.micropost
    @comment.destroy
    respond_to do |format|
      format.html do
        flash[:success] = 'Comment deleted.'
        redirect_to @micropost
      end
      format.js # JavaScript response
    end
  end  
  private

    def comment_params
      params.require(:comment).permit(:comment,:user_id,:micropost_id)
    end
end
