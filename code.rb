#YOUR CODE GOES HERE
require "pry"
class Airplane

  def initialize
    @max_weight = 20_000
  end


end

class Container
  def initialize
    @weight = nil
    @max_capacity = nil
  end

  def sprouts_container
    @weight = 200
    @max_capacity = 300
  end

  def max_sprouts
    sprout_weight = Ingredient.new("Brussels Sprout", 20).to_pounds
    max = @max_capacity / sprout_weight
    max.to_i
  end

  def poofs_container
    @weight = 50
    @max_capacity = 20
  end

  def max_poofs
    poof_weight = Ingredient.new("Cheesy Poof", 1.5).to_pounds
    max = @max_capacity / poof_weight
    max.to_i
  end


  def full_weight
    @weight + @max_capacity
  end


end

class Ingredient
  attr_reader :name, :weight
  def initialize(name, weight = nil)
    @name = name
    @weight = weight.to_f
  end

  def to_pounds
    (@weight * 0.002204).round(4)
  end


  def cheesy_poof
    @weight
  end


end

brussel_sprouts = Ingredient.new("Brussels Sprout", 20)
cheesy_poofs = Ingredient.new("Cheesy Poof", 1.5)






# * The Concorde has a maximum carrying capacity (max cargo weight) of 20,000 lbs.
# * We have to share our cargo with someone else who wants Cheesy Poofs.
# * Each ingredient has a name and weight
# * A single Brussels sprout weighs 20 grams.
# * A single Cheesy Poof weighs 0.5 grams.
# * Each container has a type of ingredient that it can carry
# and a quant ingredients
# * Each contaity ofiner can only carry one type of ingredient
# * Brussels sprouts friendly containers weigh 200 lbs and can carry a maximum weight of 300 lbs
# * Cheese Poof containers weigh 50 lbs and can carry a maximum weight of 20 lbs (they are very sturdy).
