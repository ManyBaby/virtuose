class SeedTypeOfService < ActiveRecord::Migration[5.1]
  def change
    TypeOfService.create([
      {name: 'Réunion'},
      {name: 'Conférence'},
      {name: 'Scolaire'},
      {name: 'Média'},
      {name: 'Politique'},
    ])
  end
end
