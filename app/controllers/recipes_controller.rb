class RecipesController < ApplicationController
  def index
    recipes = Recipe.all
    if current_user 
      render json: recipes, each_serializer: UserSerializer

    
  end

  def create
    new_recipe = Recipe.create(recipe_params)
    if new_recipe.valid? 
      render json: new_recipe, status: :created 
    else  
      render json: {error: new_recipe.errors.full_messages}, status: 422 
    end
  end


  private 

  def recipe_params 
    params.permit(:title, :instructions, :minutes_to_complete)
  end
end
