class CreateDrinkMixRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :drink_mix_recipes do |t|
      t.integer :drinkmix_id
      t.integer :recipe_id
      t.integer :rank

      t.timestamps
    end
  end
end
