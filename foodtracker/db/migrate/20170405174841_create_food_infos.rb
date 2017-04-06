class CreateFoodInfos < ActiveRecord::Migration[5.0]
  def change
    create_table :food_infos do |t|
      t.string :food_item
      t.integer :calories
      t.integer :carb
      t.integer :protein
      t.integer :fat

      t.timestamps
    end
  end
end
