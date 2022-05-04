class PostImage < ApplicationRecord
  has_one_attached :image
  belongs_to :user
  
  def get_image
    unless image.attached?
      file_path = Rails.root.join('apps/assert/images/no_image.jpg')
      image.attach(io:File.poen(file_path), filename: "defaulf-image.jpg",content_type: "image/jpeg")
    end
    image
  end
end
