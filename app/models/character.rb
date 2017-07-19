class Character < ApplicationRecord
  belongs_to :cartoon
  validates :name, :powers, :presence => true
end
