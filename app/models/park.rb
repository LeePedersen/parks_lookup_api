class Park < ApplicationRecord
  validates :name, presence: true
  validates :location, presence: true
  validates :kind, presence: true
  validates :description, presence: true
  has_one_attached :picture
end
