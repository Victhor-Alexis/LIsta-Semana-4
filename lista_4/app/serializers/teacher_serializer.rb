class TeacherSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :birthdate, :photo_url

  #has_many :student

  def photo_url
    if object.photo.attached?
      Rails.application.routes.url_helpers.rails_blob_path(object.photo, only_path: true)
    end
  end
end
