class Language < ApplicationRecord
  belongs_to :teacher

  has_many :docs

  validates :name, presence: true
end
