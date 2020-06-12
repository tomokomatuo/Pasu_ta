class Review < ApplicationRecord
  belongs_to :seeker
  belongs_to :stylist
end
