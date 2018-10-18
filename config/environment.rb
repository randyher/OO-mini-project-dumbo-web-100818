require 'bundler/setup'
Bundler.require
require_all 'app'

ran = User.new("Randy")
jor = User.new("Jordan")
trav = User.new("Trav")

recipe_one = Recipe.new("One")
recipe_two = Recipe.new("Two")
recipe_three = Recipe.new("Three")

card_one = RecipeCard.new(recipe_one,trav, 3)
card_two = RecipeCard.new(recipe_two,ran, 4)
card_three = RecipeCard.new(recipe_one,ran, 7)
card_four = RecipeCard.new(recipe_three,ran, 10)
card_five = RecipeCard.new(recipe_one,ran, 8)

jor.add_recipe_card(recipe_two,10)
trav.add_recipe_card(recipe_three,10)
# #
ing_one = Ingredient.new("salt")
ing_two = Ingredient.new("pepper")
ing_three = Ingredient.new("chicken")
ing_four = Ingredient.new("oil")

one = RecipeIngredient.new(recipe_one,ing_one)
two = RecipeIngredient.new(recipe_one,ing_two)

ran.declare_allergen(ing_four)
# recipe_one.add_ingredients([ing_three, ing_four])



binding.pry

0
