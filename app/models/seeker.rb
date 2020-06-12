class Seeker < ApplicationRecord
  belongs_to :user, optional: true
  has_many :reviews, dependent: :destroy
  ratyrate_rater
end
