class Property < ApplicationRecord

  has_many :stations, dependent: :destroy

  accepts_nested_attributes_for :stations, reject_if: :all_blank, allow_destroy: true

  validates :price, numericality: { greater_than: 0 }

end

