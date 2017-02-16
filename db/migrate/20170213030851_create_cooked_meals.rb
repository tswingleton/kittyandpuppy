class CreateCookedMeals < ActiveRecord::Migration[5.0]
  def change
    create_table :cooked_meals do |t|
      t.string :Name
      t.string :Recipe

      t.timestamps
    end
  end
end
