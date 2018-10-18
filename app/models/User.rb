class User

  @@all =[]
  attr_reader :name

  def initialize(name)
    @name = name
    @@all.push(self)
  end

  def self.all
    @@all
  end

  def recipes
    RecipeCard.all.select do |recipe|
      recipe.user == self
    end
  end

  def add_recipe_card(recipe,rating)
    new_recipe = RecipeCard.new(recipe, self, rating)
    new_recipe
  end

  def declare_allergen (ingredient)
    Allergen.new(self, ingredient)
  end

  def allergens
    Allergen.all.select {|al| al.user == self }
  end

  def top_three_recipe
    recipe_arr = recipes.sort_by do |recipe|
      recipe.rating
    end

    recipe_arr.reverse[0..2]
  end

  def most_recent_recipe
    recipes[-1]
  end

end
