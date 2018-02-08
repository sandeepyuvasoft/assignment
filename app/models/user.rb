class User < ApplicationRecord
  rolify
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :assignment_coordinates
  has_many :assignments, through: :assignment_coordinates
  accepts_nested_attributes_for :assignment_coordinates, reject_if: :all_blank, allow_destroy: true
end
