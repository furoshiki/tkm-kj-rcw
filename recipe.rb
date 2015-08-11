require './recipe_data'

# レシピの管理、出力を行えるようにするクラス
class RecipeReader
  class << self
    # IDを元にレシピを検索し、標準出力する
    def print(id=nil,user_name=nil)
      RecipeData.find_recipe(id,user_name) do |recipe|
        print_recipe(recipe)
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
if ARGV[1]
  RecipeReader.print(ARGV[0],ARGV[1].to_i)
else
  RecipeReader.print(ARGV[0])
end
