class Form < ActiveRecord::Base
  attr_accessible :description, :instructions, :note, :status, :sub_title, :title
end
