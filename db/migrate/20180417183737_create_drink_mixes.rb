class CreateDrinkMixes < ActiveRecord::Migration[5.1]
  def change
    create_table :drink_mixes do |t|
      t.string :name
      t.string :user_id

      t.timestamps
    end
  end
end
