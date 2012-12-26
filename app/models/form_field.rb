class FormField < ActiveRecord::Base
  belongs_to :form
  attr_accessible :answer_options, :answer_type, :label, :suggation
end
