class CreateRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :requests do |t|
      t.references :place, foreign_key: true
      t.references :user, foreign_key: true
      t.references :type_of_service, foreign_key: true
      t.datetime :start_time, null: false
      t.datetime :end_time, null: false
      t.datetime :done
      t.datetime :paid
      t.text :comment
      t.timestamps
    end
  end
end
