class LanguageSerializer < ActiveModel::Serializer
  attributes :id, :name, :teacher_id
  has_many :docs
end
