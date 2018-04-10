class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :desciption
      t.integer :liqour_id

      t.timestamps null: false
    end
  end
end
