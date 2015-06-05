require_relative "../code"

describe Ingredient do
  let (:ingredient){ ingredient = Ingredient.new("Brussels Sprout", 20) }
  describe "#initialize" do
    it 'tells the name of the ingredient' do
      expect(ingredient.name).to eq("Brussels Sprout")
    end

    it 'shows the weight of the ingredient' do
      expect(ingredient.weight).to eq(20)
    end
  end

   describe "#to_pounds" do
    it 'converts grams to pounds' do
      expect(ingredient.to_pounds).to eq(0.0441)
    end
  end

end

describe Container do
  let (:container){ container = Container.new }
   describe "#max_sprouts" do
    it 'calculates how many sprouts fit in container' do
      container.sprouts_container
      expect(container.max_sprouts).to eq(6802)
    end
  end

    describe "#max_poofs" do
    it 'calculates how many poofs fit in container' do
      container.poofs_container
      expect(container.max_poofs).to eq(6060)
    end
  end
end

describe Airplane do
  let (:container){ container = Container.new }
   describe "#max_sprouts" do
    it 'calculates how many sprouts fit in container' do
      container.sprouts_container
      expect(container.max_sprouts).to eq(6802)
    end
  end

    describe "#max_poofs" do
    it 'calculates how many poofs fit in container' do
      container.poofs_container
      expect(container.max_poofs).to eq(6060)
    end
  end
end
