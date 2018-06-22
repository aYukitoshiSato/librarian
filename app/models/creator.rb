# "id" integer PRIMARY KEY AUTOINCREMENT NOT NULL,
# "name" varchar, "created_at" datetime NOT NULL,
# "updated_at" datetime NOT NULL

class Creator < ApplicationRecord
    validates :name, {presence: true,uniqueness: true}
    has_many :creator_belongs_to_collections
    has_many :collections, through: :creator_belongs_to_collections
    accepts_nested_attributes_for :creator_belongs_to_collections
end
