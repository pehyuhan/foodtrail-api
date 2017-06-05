class Item < ApplicationRecord
  # model association
  belongs_to :list

  # validation
  validates_presence_of :name, :location, :postal_code
end
