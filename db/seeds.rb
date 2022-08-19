puts "🌱 Seeding spices..."

# Seed your database here
# Regimes
Regime.create(name: "low sugar")
Regime.create(name: "paleo")
Regime.create(name: "keto")
Regime.create(name: "vegan")
Regime.create(name: "gluten free")

Ingredient.create(name: "milk")
Ingredient.create(name: "almond")
Ingredient.create(name: "egg")
Ingredient.create(name: "butter")
Ingredient.create(name: "chocolate")
Ingredient.create(name: "sugar")

Dessert.create(
  "name": "Cheescake",
  "image": "../img/cheescake.png",
  "carbohydrates": 200,
  "proteins": 12,
  "fat": 5,
)
Dessert.create(
  "name": "Pastel chocolate",
  "image": "../img/pastel-chocolate.png",
  "carbohydrates": 200,
  "proteins": 12,
  "fat": 5,
)
Dessert.create(
  "name": "Tarta chocolate",
  "image": "../img/tarta-chocolate-vegana.png",
  "carbohydrates": 200,
  "proteins": 12,
  "fat": 5,
)
Dessert.create(
  "name": "Trufa chocolate",
  "image": "../img/trufa-chocolate.png",
  "carbohydrates": 25,
  "proteins": 21,
  "fat": 20,
)
Dessert_Regime.create(
  dessert_id: 1,
  regime_id: 1
)
Dessert_Regime.create(
  dessert_id: 1,
  regime_id: 2
)
Dessert_Regime.create(
  dessert_id: 1,
  regime_id: 3
)
Dessert_Regime.create(
  dessert_id: 2,
  regime_id: 1
)
Dessert_Regime.create(
  dessert_id: 2,
  regime_id: 4
)
Dessert_Regime.create(
  dessert_id: 3,
  regime_id: 2
)
Dessert_Regime.create(
  dessert_id: 4,
  regime_id: 2
)
Recipe.create(
  dessert_id: 1,
  ingredient_id: 1
)
Recipe.create(
  dessert_id: 1,
  ingredient_id: 2
)
Recipe.create(
  dessert_id: 2,
  ingredient_id: 3
)
Recipe.create(
  dessert_id: 4,
  ingredient_id: 1
)
Recipe.create(
  dessert_id: 2,
  ingredient_id: 4
)
Recipe.create(
  dessert_id: 4,
  ingredient_id: 3
)
puts "✅ Done seeding!!"
