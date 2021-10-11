class Doc < ApplicationRecord
  belongs_to :language

  validates :name, :language_id, presence: true
end
