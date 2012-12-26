class ApplicationForm < ActiveRecord::Base
  belongs_to :user
  belongs_to :form
  attr_accessible :duration, :purpose, :request_date, :status, :tracking_id, :type_of_move
end
