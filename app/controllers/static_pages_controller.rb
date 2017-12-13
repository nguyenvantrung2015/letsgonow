class StaticPagesController < ApplicationController

  def home
    if logged_in?
      @notifications= current_user.notifications
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end

  def help
  end

  def about
    @recentPosts= Micropost.where("district_id = ?",params[:id])
    @notifications= current_user.notifications
    respond_to do |format|
        format.html do
          flash[:success] = 'Comment posted.'
          redirect_to about_path
        end
        format.js
    end
    
  end

  def contact
  end
  def test
  end
  def index
    @notifications= current_user.notifications
    @posts = Micropost.order("like_count DESC").limit(5)
    @addresses= District.all
    @recentPosts= Micropost.order("updated_at DESC").limit(3)
    @topUsers= User.joins(:microposts).group('users.id').order('count(microposts.id) desc').limit(10)
  end
end
