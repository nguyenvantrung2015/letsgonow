class MicropostsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]
  before_action :correct_user,   only: :destroy


  def create
    @micropost = current_user.microposts.build(micropost_params)
    if @micropost.save
      flash[:success] = "Micropost created!"
      redirect_to root_url
    else
      @feed_items = []
      render 'static_pages/home'
    end
  end
  def show
    @user = User.find(current_user.id)
    @micropost = Micropost.find(params[:id])
    @comments = @micropost.comments
    @new_comment = @micropost.comments.new
  end
  
  def edit
    @user = User.find(current_user.id)
    @micropost = Micropost.find(params[:id])
    @districts = District.all
  end

  def destroy
    @micropost.destroy
    flash[:success] = "Micropost deleted"
    redirect_to request.referrer || root_url
  end
  def new
    if logged_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
     @user = User.find(current_user.id)
     @districts = District.all
    
  end

  private

    def micropost_params
      params.require(:micropost).permit(:content, :picture, :title, :district_id)
    end

    def correct_user
      @micropost = current_user.microposts.find_by(id: params[:id])
      redirect_to root_url if @micropost.nil?
    end
end