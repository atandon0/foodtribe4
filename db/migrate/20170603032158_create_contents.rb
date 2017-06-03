class CreateContents < ActiveRecord::Migration[5.0]
  def change
    create_table :contents do |t|
      t.string :photo_video
      t.text :description
      t.integer :user_id
      t.string :caption
      t.integer :occassion_id
      t.integer :special_diet_id
      t.integer :cuisine_id

      t.timestamps

    end
  end
end
