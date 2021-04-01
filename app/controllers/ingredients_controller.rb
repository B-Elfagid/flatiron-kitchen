class IngredientsController < ApplicationController

  def new
    @ingredient= Ingredient.new
  end

  def index
    @ingredients = ingredients.all
  end 

  def create
    @ingredient = inredient.new(ingredients_params)
    if @ingredient.save
      redirect_to ingredients_path
    else
      render :new
    end
  end

  def edit
    @ingredient = Ingredient.find(params[:id])
  end

  def update
    @ingredient = Ingredient.find(params[:id])
    @ingredient.update(ingredients_params)
    if @ingredient.save
      redirect_to ingredients_path
    else
      render :edit
    end
  end


 private


def ingredients_params
  params.require(:ingredient).permit(:name)
end

end