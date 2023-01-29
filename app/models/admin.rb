class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,:recoverable,
         :rememberable, :validatable

  #kaminari 
  paginates_per 9
  mount_uploader :image, ImageUploader
  has_many :publications
  
end
