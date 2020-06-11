class Review < ApplicationRecord
  belongs_to :stylist
  belongs_to :seeker
end
