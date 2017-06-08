class MyContentsController < ApplicationController

  def index

    @contents = current_user.contents
    render("/my_contents/index.html.erb")

  end


end
