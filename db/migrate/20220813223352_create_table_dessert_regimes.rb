class CreateTableDessertRegimes < ActiveRecord::Migration[6.1]
  def change
    create_table :dessert_regimes do |t|
      t.integer :dessert_id
      t.integer :regime_id
    end
  end
end
