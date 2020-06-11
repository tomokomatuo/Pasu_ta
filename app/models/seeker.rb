class Seeker < ApplicationRecord
  belongs_to :user, optional: true
  ratyrate_rater
end
