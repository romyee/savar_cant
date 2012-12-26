class Vehicle < ActiveRecord::Base
  belongs_to :vehicle_type
  attr_accessible :description, :unit_id, :vehicle_id, :vin_id
end
