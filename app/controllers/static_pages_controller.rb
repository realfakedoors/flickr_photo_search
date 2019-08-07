class StaticPagesController < ApplicationController
  include StaticPagesHelper
  
  def index
    @user_id = params[:user_id]
    if @user_id
      if valid_flickr_user?(@user_id)
        @photos   = find_photos(@user_id)
        @username = find_username(@photos.first)
      else
        flash[:notice] = "Invalid user ID!"
        redirect_to root_path
      end
    end
  end
  
end