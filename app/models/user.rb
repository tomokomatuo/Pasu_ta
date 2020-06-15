class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :seeker, dependent: :destroy
  has_one :stylist, dependent: :destroy
  # has_many :reviews, dependent: :destroy
  acts_as_paranoid
end
