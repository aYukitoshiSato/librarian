class List < ApplicationRecord
  has_many :contents_lists, dependent: :destroy
  has_many :contents, through: :contents_lists
end
