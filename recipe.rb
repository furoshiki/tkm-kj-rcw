require './recipe_data'

class Recipe
  def initialize
    print_data
  end

  private

  def print_data
    RecipeData::DATA.each do |recipe|
      puts "#{recipe[:id]}: #{recipe[:name]}"
    end
  end
end

Recipe.new
