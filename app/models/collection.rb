# "id" integer PRIMARY KEY AUTOINCREMENT NOT NULL,
# "title" varchar,
# "format_id" integer,
# "content_id" integer,
# "created_at" datetime NOT NULL,
# "updated_at" datetime NOT NULL,
# "No" integer

class Collection < ApplicationRecord
  belongs_to :content
  has_many :creator_belongs_to_collections, dependent: :destroy, inverse_of: :collection
  has_many :creators, through: :creator_belongs_to_collections, inverse_of: :collections
  accepts_nested_attributes_for :creators, allow_destroy: true, :reject_if => :all_blank

  # def creators_attributes=(creator_attributes)
  #   creator_attributes.values.each do |creator_attribute|
  #     creator = Creator.find_or_create_by(name: creator_attribute[:name], position: creator_attribute[:position])
  #     self.creators << creator
  #   end
  # end

end
