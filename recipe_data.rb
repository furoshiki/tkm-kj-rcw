class RecipeData
  DATA = [
    {
      id:   1,
      name: 'オムライス',
      discription: '卵を焼いてごはんにのせる'
    },
    {
      id:   2,
      name: '親子丼',
      discription: '鶏肉を焼いて卵でとじてごはんにのせる'
    },
    {
      id:   3,
      name: '杏仁豆腐',
      discription: '牛乳と砂糖をまぜてゼラチンで固める'
    }
  ].freeze

  class << self
    def find_recipe_data(id)
      DATA.find {|recipe| recipe[:id] == id }
    end
    def each_all
      DATA.each do |recipe|
        yield recipe
      end
    end
  end
end
