require './recipe_data'

class Recipe
  def initialize(id=nil)
    if id
      recipe = RecipeData.find_recipe_data(id)
      print_data(recipe)
    else
      RecipeData.each_all do |recipe|
        print_data(recipe)
      end
    end
  end

  private

  def print_data(recipe)
    puts "#{recipe[:id]}: #{recipe[:name]} : #{recipe[:discription]}"
  end
end

Recipe.new()
