class CreatePlaces < ActiveRecord::Migration[5.1]
  def change
    create_table :places do |t|
      t.string :name, null: false
      t.decimal :lat, precision: 20, scale: 16
      t.decimal :long, precision: 20, scale: 16
      t.string :address, null: false

      t.timestamps
    end
  end
end
