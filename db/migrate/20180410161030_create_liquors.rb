class CreateLiquors < ActiveRecord::Migration[5.1]
  def change
    create_table :liquors do |t|
      t.string :name
      
      t.timestamps null: false
    end
  end
end
