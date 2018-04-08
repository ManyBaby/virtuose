class CreateInterpretersSkills < ActiveRecord::Migration[5.1]
  def change
    create_table :interpreters_skills do |t|
      t.references :interpreter, foreign_key: true
      t.references :skill, foreign_key: true

      t.timestamps
    end
  end
end
