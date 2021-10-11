class StudentSerializer < ActiveModel::Serializer
  attributes :id, :name, :birthdate, :email, :registration_number, :teacher_id, :photo_url

  def photo_url
    if object.photo.attached?
      Rails.application.routes.url_helpers.rails_blob_path(object.photo, only_path: true)
    end
  end
end
