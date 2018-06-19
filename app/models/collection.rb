class Collection < ApplicationRecord
  belongs_to :content
  has_many :creator_belongs_to_collections, dependent: :destroy

  # def getcreators
  #   if cbtcs = CreatorBelongsToCollection.where(collection_id: id)
  #     creators = []
  #     cbtcs.each do |cbtc|
  #       position = Position.find_by(id: cbtc.position_id).name
  #       creator = Creator.find_by(id: cbtc.creator_id).name
  #       creators << [position, creator]
  #     end
  #     return creators
  #   end
  #  end

end
