class Teacher < ApplicationRecord
    has_many :student, dependent: :destroy
    has_one :language, dependent: :destroy

    validates :name, :birthdate, :email, presence: true
    validates :email, uniqueness: true
    validates_date :birthdate, on_or_before: lambda {Date.current}

    has_one_attached :photo
end
