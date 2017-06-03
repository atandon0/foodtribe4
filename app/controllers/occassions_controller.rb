class OccassionsController < ApplicationController
  def index
    @occassions = Occassion.all

    render("occassions/index.html.erb")
  end

  def show
    @occassion = Occassion.find(params[:id])

    render("occassions/show.html.erb")
  end

  def new
    @occassion = Occassion.new

    render("occassions/new.html.erb")
  end

  def create
    @occassion = Occassion.new

    @occassion.occassion_name = params[:occassion_name]
    @occassion.photo = params[:photo]

    save_status = @occassion.save

    if save_status == true
      redirect_to("/occassions/#{@occassion.id}", :notice => "Occassion created successfully.")
    else
      render("occassions/new.html.erb")
    end
  end

  def edit
    @occassion = Occassion.find(params[:id])

    render("occassions/edit.html.erb")
  end

  def update
    @occassion = Occassion.find(params[:id])

    @occassion.occassion_name = params[:occassion_name]
    @occassion.photo = params[:photo]

    save_status = @occassion.save

    if save_status == true
      redirect_to("/occassions/#{@occassion.id}", :notice => "Occassion updated successfully.")
    else
      render("occassions/edit.html.erb")
    end
  end

  def destroy
    @occassion = Occassion.find(params[:id])

    @occassion.destroy

    if URI(request.referer).path == "/occassions/#{@occassion.id}"
      redirect_to("/", :notice => "Occassion deleted.")
    else
      redirect_to(:back, :notice => "Occassion deleted.")
    end
  end
end
