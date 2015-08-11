require './recipe_data'

class Recipe
  def initialize
    print_data
  end

  private

  def print_data
    RecipeData::DATA.each do |name|
      puts name
    end
  end
end

Recipe.new
