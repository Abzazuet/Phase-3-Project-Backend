puts "🌱 Seeding spices..."

# Seed your database here
# Regimes
Regime.create(name: "sugar free")
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
  "name": "Chocolate Bomb",
  "image": "image",
  "carbohydrates": 200,
  "proteins": 12,
  "fat": 5,
)
Dessert.create(
  "name": "Strwaberry Keto Bomb",
  "image": "image",
  "carbohydrates": 200,
  "proteins": 12,
  "fat": 5,
)
Dessert.create(
  "name": "Mango Keto Bomb",
  "image": "image",
  "carbohydrates": 200,
  "proteins": 12,
  "fat": 5,
)
Dessert.create(
  "name": "chocolate red",
  "image": "hhtttuuy",
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
