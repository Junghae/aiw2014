class University < ActiveRecord::Base
  belongs_to :university_cate

  mount_uploader :picture, PictureUploader

end
