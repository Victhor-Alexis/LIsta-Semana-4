class Student < ApplicationRecord
  belongs_to :teacher
  
  validates :name, :email, :birthdate, :registration_number, presence: true
  validates :email, uniqueness:true
  validates_length_of :registration_number, is: 9
  validates_date :birthdate, on_or_before: lambda {Date.currrent}
end
