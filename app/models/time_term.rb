class TimeTerm < ApplicationRecord
  belongs_to :task
  belongs_to :calendar
  belongs_to :location
end
