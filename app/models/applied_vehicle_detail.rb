class AppliedVehicleDetail < ActiveRecord::Base
  belongs_to :application_form
  belongs_to :vehicle_type
  belongs_to :user
  attr_accessible :quantity
end
