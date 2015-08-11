require './recipe_data'

# レシピの管理、出力を行えるようにするクラス
class RecipeReader
  class << self
    # IDを元にレシピを検索し、標準出力する
    def print(id=nil)
      if id
        recipe = RecipeData.find_recipe_data(id)
        print_recipe(recipe)
      else
        RecipeData.each_all do |recipe|
          print_recipe(recipe)
        end
      end
    end

    private
    # レシピデータを標準出力する
    def print_recipe(recipe)
      puts "#{recipe[:id]}: #{recipe[:name]} : #{recipe[:discription]}"
    end
  end
end

# コマンドライン引数を元にレシピ情報への操作を決定する
if ARGV[0]
  RecipeReader.print(ARGV[0].to_i)
else
  RecipeReader.print()
end
