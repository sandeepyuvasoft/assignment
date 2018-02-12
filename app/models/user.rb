class User < ApplicationRecord
  rolify
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
        
  has_many :assignment_coordinators
  has_many :assignments, through: :assignment_coordinators 
  has_many :assignments
  accepts_nested_attributes_for :assignments, reject_if: :all_blank, allow_destroy: true

end
