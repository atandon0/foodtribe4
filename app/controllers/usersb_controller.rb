class UsersbController < ApplicationController


  def show
    @user = User.find(params[:id])
    @contents = @user.contents

    render("usersb/show.html.erb")
  end



end
