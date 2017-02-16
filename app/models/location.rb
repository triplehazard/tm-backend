class Location < ApplicationRecord
  has_many :tasks
  has_many :time_terms
end
