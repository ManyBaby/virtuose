class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :last_name, null: false
      t.string :first_name, null: false
      t.string :phone_number, null: false
      t.boolean :company, null: false, default: false
      t.timestamps
    end
  end
end
