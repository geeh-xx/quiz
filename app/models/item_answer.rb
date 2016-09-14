class ItemAnswer < ActiveRecord::Base
  belongs_to :exam
  belongs_to :answer
end
