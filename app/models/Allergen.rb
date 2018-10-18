class Allergen

  @@all = []
  attr_reader :user, :ingredients

  def initialize (user, ingredients)
    @user = user
    @ingredients = ingredients
    @@all.push(self)
  end

  def self.all
    @@all
  end



end
