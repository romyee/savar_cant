class User < ActiveRecord::Base
  attr_accessible :address, :designation, :email, :employee_id, :first_name, :last_name, :phone, :reset_hash, :role, :salt_key, :salted_password, :username
end
