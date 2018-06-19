class Content < ApplicationRecord
  validates :title, {presence: true}
  has_many :collections, dependent: :destroy
end
