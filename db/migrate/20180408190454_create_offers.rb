class CreateOffers < ActiveRecord::Migration[5.1]
  def change
    create_table :offers do |t|
      t.references :interpreter, foreign_key: true
      t.references :request, foreign_key: true
      t.integer :price
      t.datetime :accepted
      t.datetime :rejected

      t.timestamps
    end
  end
end
