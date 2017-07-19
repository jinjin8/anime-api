class CharacterSerializer < ActiveModel::Serializer
  attributes :name, :powers
  belongs_to :cartoon
end
