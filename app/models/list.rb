class List < ApplicationRecord
  has_many :contents_lists
  has_many :contents, through: :contents_lists
end
