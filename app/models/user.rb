class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :seeker
  accepts_nested_attributes_for :seeker, allow_destroy: true
  has_one :stylist
  accepts_nested_attributes_for :stylist, allow_destroy: true
  acts_as_paranoid
end
