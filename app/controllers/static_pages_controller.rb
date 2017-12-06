class StaticPagesController < ApplicationController
  def home
  end

  def help
  end
  def about
  end
  def contact
  end
  def index
  	@posts = Post.order("like_count DESC").limit(5)
  	@addresses= District.all
  	@recentPosts= Post.order("updated_at DESC").limit(3)
    @topUsers= User.joins(:posts).group('users.id').order('count(posts.id) desc').limit(10)
  end
  
end
