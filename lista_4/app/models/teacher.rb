class Teacher < ApplicationRecord
    has_one :student, dependent: :destroy
    has_one :language, dependent: :destroy

    validates :name, :birthdate, :email, presence: true
    validates :email, uniqueness: true
    validates_date :birthdate, on_or_before: lambda {Date.current}
end
