class Teacher < ApplicationRecord
    validates :name, :birthdate, :email, presence: true
    validates :email, uniqueness: true
    validates_date :birthdate, on_or_before: lambda {Date.current}
end
