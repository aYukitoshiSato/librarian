# "id" integer PRIMARY KEY AUTOINCREMENT NOT NULL,
# "title" varchar,
# "format_id" integer,
# "content_id" integer,
# "created_at" datetime NOT NULL,
# "updated_at" datetime NOT NULL,
# "No" integer

class Collection < ApplicationRecord
  belongs_to :content
  has_many :creator_belongs_to_collections, dependent: :destroy

end
