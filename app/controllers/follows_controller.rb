class FollowsController < ApplicationController

  def index
    @follows = current_user.follows
    render("follows/index.html.erb")
  end

end
