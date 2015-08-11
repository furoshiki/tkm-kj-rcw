require './recipe_data'

class Recipe
  def initialize(id)
    recipe = RecipeData.find_recipe_data(id)
    print_data(recipe)
  end

  private

  def print_data(recipe)
    puts "#{recipe[:id]}: #{recipe[:name]}"
  end
end

Recipe.new(2)
