class Park < ApplicationRecord
  validates :name, presence: true
  validates :location, presence: true
  validates :kind, presence: true
  validates :description, presence: true
  has_attached_file :picture, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
end
