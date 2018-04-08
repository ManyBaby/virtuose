class Forest::Place
  include ForestLiana::Collection

  collection :Place

  field :location, type: 'String' do
    "#{object.lat}, #{object.long}"
  end
end