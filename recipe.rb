require './recipe_data'

# レシピの管理、出力を行えるようにするクラス
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

# 引数を元にレシピへの操作を決定する
if ARGV[0]
  Recipe.new(ARGV[0].to_i)
else
  Recipe.new()
end
