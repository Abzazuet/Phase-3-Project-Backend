class Dessert < ActiveRecord::Base
  def ingredients
    ingredients = []
    Recipe.all.each do |recipe|
      if recipe.dessert_id == self.id
        ingredients << Ingredient.find(recipe.ingredient_id).name
      end
    end
    ingredients
  end

  def regimes
    regimes = []
    Dessert_Regime.all.each do |dessert_regime|
      if dessert_regime.dessert_id == self.id
        regimes << Regime.find(dessert_regime.regime_id).name
      end
    end
    regimes
  end

  def dessert_obj
    {
      id: self.id,
      name: self.name,
      image: self.image,
      fat: self.fat,
      proteins: self.proteins,
      carbohydrates: self.carbohydrates,
      ingredients: self.ingredients,
      regimes: self.regimes,
    }
  end

  def self.desserts
    desserts = []
    Dessert.all.each do |dessert|
      desserts << dessert.dessert_obj
    end
    pp desserts
  end
end

