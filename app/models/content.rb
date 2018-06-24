# "id" integer NOT NULL PRIMARY KEY,
# "form" integer DEFAULT NULL,
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
  enum form:{other: 0, video: 1, audio: 2, book:3, game:4, goods: 5}
  validates :title, {presence: true}
  has_many :collections, dependent: :destroy
  has_many :contents_lists
  has_many :lists, through: :contents_lists
  accepts_nested_attributes_for :collections, allow_destroy: true
end
