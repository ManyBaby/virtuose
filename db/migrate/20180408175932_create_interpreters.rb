class CreateInterpreters < ActiveRecord::Migration[5.1]
  def change
    create_table :interpreters do |t|
      t.string :email
      t.string :phone_number
      t.string :first_name
      t.string :last_name
      t.text :description, null: false

      t.timestamps
    end
  end
end
