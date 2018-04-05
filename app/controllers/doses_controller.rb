class DosesController < ApplicationController

  def new
    @dose = Dose.new
    # @ingredient = Ingredient.find(params[:ingredient_id])
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def create
    @dose = Dose.new(dose_params)
    @ingredient = Ingredient.find(@dose[:ingredient_id])
    @dose.ingredient = @ingredient
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose.cocktail = @cocktail
    if @dose.save
      flash[:notice] = "Dose successfully added!"
      redirect_to cocktail_path(@cocktail.id)
    else
      render :new
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @cocktail = Cocktail.find(@dose[:cocktail_id])
    @dose.destroy
    flash[:notice] = "Dose successfully removed!"
    redirect_to cocktail_path(@cocktail.id)
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id, :cocktail_id)
  end

end
