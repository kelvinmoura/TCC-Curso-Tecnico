class Publication < ApplicationRecord
  belongs_to :admin, inverse_of: :publications
  belongs_to :subject
  #mount_uploader :image, ImageUploader
end
