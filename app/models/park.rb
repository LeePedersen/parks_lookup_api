class Park < ApplicationRecord
  validates :name, presence: true
  validates :location, presence: true
  validates :kind, presence: true
  validates :description, presence: true
end
