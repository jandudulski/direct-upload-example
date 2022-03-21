class Product < ApplicationRecord
  has_one_attached :image, service: :local

  validates :name, presence: true
end
