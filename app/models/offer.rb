class Offer < ApplicationRecord
  belongs_to :request
  belongs_to :interpreter
  # TODO add the money gem for price management on offers

end
