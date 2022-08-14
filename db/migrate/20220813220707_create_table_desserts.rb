class CreateTableDesserts < ActiveRecord::Migration[6.1]
  def change
    create_table :desserts do |t|
      t.string :name
      t.string :image
      t.integer :carbohydrates
      t.integer :proteins
      t.integer :fat
      t.timestamps
    end
  end
end
