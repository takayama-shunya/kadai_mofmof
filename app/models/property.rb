class Property < ApplicationRecord

  has_many :stations, dependent: :destroy

  accepts_nested_attributes_for :stations, reject_if: :reject_stations, allow_destroy: true

  def reject_stations(attributes)
    attributes['name'].blank? && 
    attributes['route_name'].blank? &&
    attributes['walking'].blank?
  end

end

