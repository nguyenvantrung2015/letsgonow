class StaticPagesController < ApplicationController

  def home
    if logged_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end

  def help
  end

  def about
  end

  def contact
  end
  def test
  end
  def index
    @posts = Micropost.order("like_count DESC").limit(5)
    @addresses= District.all
    @recentPosts= Micropost.order("updated_at DESC").limit(3)
    @topUsers= User.joins(:microposts).group('users.id').order('count(microposts.id) desc').limit(10)
  end
end
