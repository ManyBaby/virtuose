class SeedTypeOfService < ActiveRecord::Migration[5.1]
  def change
    TypeOfService.create([
      {name: 'Entretien'},
      {name: 'Réunion'},
      {name: 'Scolaire'},
      {name: 'Conférence'},
      {name: 'Média'},
      {name: 'Politique'},
    ])
  end
end
