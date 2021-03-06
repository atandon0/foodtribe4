class LikesController < ApplicationController
  def index
    @likes = Like.all

    render("likes/index.html.erb")
  end

  def show
    @like = Like.find(params[:id])

    render("likes/show.html.erb")
  end

  def new
    @like = Like.new

    render("likes/new.html.erb")
  end

  def create
    @like = Like.new

    @like.content_id = params[:content_id]
    @like.user_id = params[:user_id]

    save_status = @like.save

    if save_status == true
      redirect_to("/contents/#{@like.content_id}", :notice => "Liked!")
    else
      render("likes/new.html.erb")
    end
  end

  def edit
    @like = Like.find(params[:id])

    render("likes/edit.html.erb")
  end

  def update
    @like = Like.find(params[:id])

    @like.content_id = params[:content_id]
    @like.user_id = params[:user_id]

    save_status = @like.save

    if save_status == true
      redirect_to("/contents/#{@like.content_id}", :notice => "Like updated successfully.")
    else
      render("likes/edit.html.erb")
    end
  end

  def destroy
    @like = Like.find(params[:id])

    @like.destroy

    if URI(request.referer).path == "/likes/#{@like.id}"
      redirect_to("/contents/#{@like.content_id}", :notice => "Like deleted.")
    else
      redirect_to(:back, :notice => "Like deleted.")
    end
  end
end
