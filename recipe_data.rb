class RecipeData
  DATA = [
    {
      id:   1,
      name: 'オムライス',
      user_name: 'hoge',
      discription: '卵を焼いてごはんにのせる'
    },
    {
      id:   2,
      name: '親子丼',
      user_name: 'kou',
      discription: '鶏肉を焼いて卵でとじてごはんにのせる'
    },
    {
      id:   3,
      name: '杏仁豆腐',
      user_name: 'piyo',
      discription: '牛乳と砂糖をまぜてゼラチンで固める'
    }
  ].freeze

  class << self
    def find_recipe( user_name=nil, id=nil )
      list = DATA;
      if id
        list = list.select {|recipe| recipe[:id] == id }
      end
      if user_name
        list = list.select {|recipe| recipe[:user_name] == user_name }
      end
      list.each do |recipe|
        yield recipe
      end
    end
  end
end
