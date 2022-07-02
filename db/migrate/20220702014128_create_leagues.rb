class CreateLeagues < ActiveRecord::Migration[6.1]
  def change
    create_table :leagues do |t|
      t.string :name, null: false
      t.float :latitude, precision: 10, scale: 6, null: false
      t.float :longitude, precision: 10, scale: 6, null: false
      t.decimal :price, precision: 21, scale: 2, null: false

      t.timestamps
    end
  end
end
