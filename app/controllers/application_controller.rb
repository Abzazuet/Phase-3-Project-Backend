class ApplicationController < Sinatra::Base
  set :default_content_type, "application/json"

  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end
  get "/desserts" do
    Dessert.desserts.to_json
  end
  get "/desserts/:id" do
    dessert = Dessert.find(params[:id])
    dessert.dessert_obj.to_json
  end
  post "/desserts" do
    Dessert.create(
      name: params[:name],
      image: params[:image],
      carbohydrates: params[:carbohydrates],
      proteins: params[:proteins],
      fat: params[:fat],
    )
    dessert_id = Dessert.last.id
    params[:ingredients].each do |ingredient|
      ingredient = Ingredient.find_or_create_by(name: ingredient)
      Recipe.create(
        dessert_id: dessert_id,
        ingredient_id: ingredient.id,
      )
    end
    params[:regimes].each do |regime|
      regime = Regime.find_or_create_by(name: regime)
      Dessert_Regime.create(
        dessert_id: dessert_id,
        regime_id: regime.id,
      )
    end
    Dessert.last.dessert_obj.to_json
  end

  delete "/desserts/:id" do
    recipe = Recipe.where("dessert_id = ?", params[:id])
    dessert_regime = Dessert_Regime.where("dessert_id = ?", params[:id])
    dessert = Dessert.find(params[:id])
    dessert.destroy
    dessert_regime.destroy_all
    recipe.destroy_all
    dessert.to_json
  end

  patch "/desserts/:id" do
    dessert = Dessert.find(params[:id])
    dessert.update(
      name: params[:name],
      image: params[:image],
      proteins: params[:proteins],
      carbohydrates: params[:carbohydrates],
      fat: params[:fat],
    )
    new_ingredients = params[:ingredients]
    dessert.ingredients.each do |ingredient|
      if (!new_ingredients.include?(ingredient))
        ingredient_entry = Ingredient.find_by(name: ingredient)
        Recipe.where("dessert_id = ? AND ingredient_id = ?", dessert.id, ingredient_entry.id).delete_all
      end
    end
    new_ingredients.each do |new_ingredient|
      ingredient = Ingredient.find_or_create_by(name: new_ingredient)
      if Recipe.where("dessert_id = ? AND ingredient_id = ?", dessert.id, ingredient.id).length == 0
        Recipe.create(dessert_id: dessert.id, ingredient_id: ingredient.id)
      end
    end

    new_regimes = params[:regimes]
    dessert.regimes.each do |regime|
      if (!new_regimes.include?(regime))
        regime_entry = Regime.find_by(name: regime)
        Dessert_Regime.where("dessert_id = ? AND regime_id = ?", dessert.id, regime_entry.id).delete_all
      end
    end
    new_regimes.each do |new_regime|
      regime = Regime.find_or_create_by(name: new_regime)
      if Dessert_Regime.where("dessert_id = ? AND regime_id = ?", dessert.id, regime.id).length == 0
        Dessert_Regime.create(dessert_id: dessert.id, regime_id: regime.id)
      end
    end
    dessert.to_json
  end
end
