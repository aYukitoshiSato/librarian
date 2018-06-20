class CreatorBelongsToCollection < ApplicationRecord
  enum position:{Illustrator: 0, director: 1, music: 2, Author:3, commentator:4, translator: 5, composer: 6, lyricist: 7}
  belongs_to :creator
  belongs_to :collection
end
