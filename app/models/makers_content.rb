class MakersContent < ApplicationRecord
  belongs_to :content, inverse_of: :makers_contents
  belongs_to :maker, inverse_of: :makers_contents
end
