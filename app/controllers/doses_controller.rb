class DosesController < ApplicationController

  def new
    @dose = Dose.new
    @ingredient = Ingredient.find(params[:ingredient_id])
  end

  def create
    @dose = Dose.new(dose_params)
    @ingredient = Ingredient.find(params[:ingredient_id])
    @dose.ingredient = @ingredient
    if @dose.save
      flash[:notice] = "Dose successfully added!"
      redirect_to ingredients_path
    else
      render :new
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    flash[:notice] = "Dose successfully removed!"
    redirect_to ingredients_path
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id, :cocktail_id)
  end

end
