# "id" integer NOT NULL PRIMARY KEY,
# "form_id" integer DEFAULT NULL,
# "title" varchar DEFAULT NULL,
# "circle" integer DEFAULT NULL,
# "rating" integer DEFAULT NULL,
# "release_date" date DEFAULT NULL,
# "price" integer DEFAULT NULL,
# "cover_image" varchar DEFAULT NULL,
# "media_id" integer DEFAULT NULL,
# "event_first" integer DEFAULT NULL,
# "created_at" datetime NOT NULL,
# "updated_at" datetime NOT NULL

class Content < ApplicationRecord
  validates :title, {presence: true}
  has_many :collections, dependent: :destroy
end
