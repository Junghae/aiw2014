class University < ActiveRecord::Base
  belongs_to :university_cate
 #attr_accessible :name, :image, :remote_image_url

  #validates :name, presence: true
  #validates :description, presence: true

mount_uploader :image, ImageUploader



end
