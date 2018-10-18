class Ingredient

  @@all = []

  def initialize (ingredient)
    @ingredient = ingredient
    @@all.push(self)
  end

  def self.all
    @@all
  end

  # def self.most_common_allergen
  # end

end
