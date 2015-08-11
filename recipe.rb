require './recipe_data'

class Recipe
  def initialize(name)
    print_data(name)
  end

  private

  def print_data(name)
    puts RecipeData::DATA.find {|d| name == d }
  end
end

Recipe.new('オムライス')
