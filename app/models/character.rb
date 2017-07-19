class Character < ApplicationRecord
  belongs_to :cartoon
  validates :name, :powers, :presence => true
  scope :by_name, -> (search) { where("name like ?", "%#{search}")}
end
