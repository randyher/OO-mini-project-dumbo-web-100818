class Recipe

  @@all =[]
  attr_reader :recipe

  def initialize(recipe)
    @recipe = recipe
    @@all.push(self)
  end

  def self.all
    @@all
  end

  def users
    recipe_array = RecipeCard.all.select do |recipez|
      recipez.recipe == self
    end
    recipe_array.map do |recipez|
      recipez.user
    end
  end

  def ingredients
    ing_array = RecipeIngredient.all.select do |ing|
      ing.recipe == self
    end
    ing_array.map do |ing|
      ing.ingredient
    end
  end

  def helper_al
    Allergen.all.select do |allergen|
      allergen.ingredients == self.ingredients
    end
  end

  def allergens
    helper_al.map {}
  end

  def add_ingredients(ingredientz)
    ingredientz.each do |ing_inst| RecipeIngredient.new(self, ing_inst)
    end
  end

  def self.most_popular
    # - `Recipe.most_popular`
    # should return the recipe instance with the highest number of users (the recipe that has the most recipe cards)
  end

end
