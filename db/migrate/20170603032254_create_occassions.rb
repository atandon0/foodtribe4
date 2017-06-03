class CreateOccassions < ActiveRecord::Migration[5.0]
  def change
    create_table :occassions do |t|
      t.string :occassion_name
      t.string :photo

      t.timestamps

    end
  end
end
