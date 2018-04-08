class Request < ApplicationRecord
  belongs_to :user
  belongs_to :type_of_service
  belongs_to :place
  has_many :offers
end
