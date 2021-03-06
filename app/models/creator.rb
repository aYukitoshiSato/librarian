# "id" integer PRIMARY KEY AUTOINCREMENT NOT NULL,
# "name" varchar, "created_at" datetime NOT NULL,
# "updated_at" datetime NOT NULL

class Creator < ApplicationRecord
  validates :name, presence: true
  has_many :creator_belongs_to_collections, inverse_of: :creator
  has_many :collections, through: :creator_belongs_to_collections, inverse_of: :creator

end
