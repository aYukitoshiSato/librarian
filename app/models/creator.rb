# "id" integer PRIMARY KEY AUTOINCREMENT NOT NULL,
# "name" varchar, "created_at" datetime NOT NULL,
# "updated_at" datetime NOT NULL

class Creator < ApplicationRecord
    validates :name, {presence: true,uniqueness: true}
    has_many :creator_belongs_to_collections
end
