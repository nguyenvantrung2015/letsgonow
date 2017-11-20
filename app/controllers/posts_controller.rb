class PostsController < ApplicationController
	after_action  only: :page
  def page
    @post = Post.find_by id: params[:id]
  end
  
end
