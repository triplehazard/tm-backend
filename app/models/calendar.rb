class Calendar < ApplicationRecord
  belongs_to :user
  has_many :time_terms
end
