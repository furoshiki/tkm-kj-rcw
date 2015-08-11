class RecipeData
  DATA = [
    {
      id:   1,
      name: 'オムライス'
    },
    {
      id:   2,
      name: '親子丼'
    },
    {
      id:   3,
      name: '杏仁豆腐'
    }
  ].freeze

  class << self
    def find_recipe_data(id)
      DATA.find {|recipe| recipe[:id] == id }
    end
  end
end
