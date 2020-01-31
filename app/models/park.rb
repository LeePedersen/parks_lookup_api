class Park < ApplicationRecord
  validates :name, presence: true
  validates :location, presence: true
  validates :kind, presence: true
  validates :description, presence: true
  scope :name_search, -> (param) { where("name like ?", "%#{param}")}
  scope :location_search, -> (param) { where("location like ?", "%#{param}")}
  scope :kind_search, -> (param) { where("kind like ?", "%#{param}")}
end
