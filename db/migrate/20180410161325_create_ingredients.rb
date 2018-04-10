class CreateIngredients < ActiveRecord::Migration[5.1]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.integer :quantity
      t.integer :recipe_id

      t.timestamps null: false
    end
  end
end
