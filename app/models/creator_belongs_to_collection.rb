class CreatorBelongsToCollection < ApplicationRecord
  belongs_to :creator
  belongs_to :collection
  belongs_to :position
end
