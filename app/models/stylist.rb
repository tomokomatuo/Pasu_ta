class Stylist < ApplicationRecord
  belongs_to :user, optional: true
  has_many :reviews, dependent: :destroy
  enum gender: { man: 0, woman: 1}
  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true, numericality: true, uniqueness: true
  ratyrate_rateable "clothes"
end
