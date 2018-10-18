class RecipeCard

  @@all = []
  attr_reader :recipe, :user, :date, :rating


  def initialize(recipe, user, rating)
    @recipe = recipe
    @user = user
    @rating = rating
    @date = Time.now
    @@all.push(self)
  end

  def self.all
    @@all
  end


end
