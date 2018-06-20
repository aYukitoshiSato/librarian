class CreatorBelongsToCollection < ApplicationRecord
  enum position:{other: 0, director: 1, music: 2, Author:3, commentator:4, translator: 5, composer: 6, lyricist: 7,Illustrator: 8}
  belongs_to :creator
  belongs_to :collection
end
