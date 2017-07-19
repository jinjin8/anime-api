class Cartoon < ApplicationRecord
  has_many :characters
  validates :name, :presence => true
  paginates_per 5
end
