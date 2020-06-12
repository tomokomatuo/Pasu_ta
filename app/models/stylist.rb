class Stylist < ApplicationRecord
  belongs_to :user, optional: true
  ratyrate_rateable "clothes"
  has_many :reviews, dependent: :destroy
end
