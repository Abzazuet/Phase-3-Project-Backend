class CreateTableRecipe < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.integer :dessert_id
      t.integer :ingredient_id
    end
  end
end
