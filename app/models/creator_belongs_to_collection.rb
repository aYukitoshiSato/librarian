# "id" integer NOT NULL PRIMARY KEY,
# "position" integer DEFAULT NULL,
# "creator_id" integer DEFAULT NULL,
# "collection_id" integer DEFAULT NULL,
# "created_at" datetime NOT NULL,
# "updated_at" datetime NOT NULL

class CreatorBelongsToCollection < ApplicationRecord
  belongs_to :creator, inverse_of: :creator_belongs_to_collections
  belongs_to :collection, inverse_of: :creator_belongs_to_collections
end
