class RecipesController < ApplicationController
  def index
    recipes = Recipe.all
    if current_user 
      render json: recipes, each_serializer: UserSerializer

    
  end

  def create
  end
end
