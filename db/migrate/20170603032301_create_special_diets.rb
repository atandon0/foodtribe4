class CreateSpecialDiets < ActiveRecord::Migration[5.0]
  def change
    create_table :special_diets do |t|
      t.string :special_diet_name
      t.string :photo

      t.timestamps

    end
  end
end
