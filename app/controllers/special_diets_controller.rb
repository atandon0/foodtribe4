class SpecialDietsController < ApplicationController
  def index
    @special_diets = SpecialDiet.all

    render("special_diets/index.html.erb")
  end

  def show
    @special_diet = SpecialDiet.find(params[:id])

    render("special_diets/show.html.erb")
  end

  def new
    @special_diet = SpecialDiet.new

    render("special_diets/new.html.erb")
  end

  def create
    @special_diet = SpecialDiet.new

    @special_diet.special_diet_name = params[:special_diet_name]
    @special_diet.photo = params[:photo]

    save_status = @special_diet.save

    if save_status == true
      redirect_to("/special_diets/#{@special_diet.id}", :notice => "Special diet created successfully.")
    else
      render("special_diets/new.html.erb")
    end
  end

  def edit
    @special_diet = SpecialDiet.find(params[:id])

    render("special_diets/edit.html.erb")
  end

  def update
    @special_diet = SpecialDiet.find(params[:id])

    @special_diet.special_diet_name = params[:special_diet_name]
    @special_diet.photo = params[:photo]

    save_status = @special_diet.save

    if save_status == true
      redirect_to("/special_diets/#{@special_diet.id}", :notice => "Special diet updated successfully.")
    else
      render("special_diets/edit.html.erb")
    end
  end

  def destroy
    @special_diet = SpecialDiet.find(params[:id])

    @special_diet.destroy

    if URI(request.referer).path == "/special_diets/#{@special_diet.id}"
      redirect_to("/", :notice => "Special diet deleted.")
    else
      redirect_to(:back, :notice => "Special diet deleted.")
    end
  end
end
