class Position < ApplicationRecord
    validates :name, {presence: true,uniqueness: true}
    has_many :creator_belongs_to_collections
end
