class Maker < ApplicationRecord
  enum type_maker:{other: 0, circlr: 1, publisher: 2, distributor:3}

  has_many :makers_contents, inverse_of: :maker
  has_many :contents, through: :makers_contents, inverse_of: :maker

end
