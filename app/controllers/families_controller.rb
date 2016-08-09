class FamiliesController < ApplicationController
  def index
    @families = Family.all
  end

  def show
    @family = Family.find(params[:id])
  end

  def new
    @family = Family.new
  end

  def create
    @family = Family.create!(family_params)
    redirect_to @family
  end

  def edit
    @family = Family.find(params[:id])
  end

  def update
    @family = Family.find(params[:id])
    if @family.update(family_params)
      flash[:notice] = "#{@family.name} was successfully updated."
      redirect_to @family
    else
      render :edit
    end
  end

  def destroy
    @family = Family.find(params[:id])
    @family.destroy
    redirect_to families_path
  end

  private
  def family_params
    params.require(:family).permit(:name)
  end

end
