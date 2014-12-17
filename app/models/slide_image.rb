class SlideImage < ActiveRecord::Base
  mount_uploader :location, ImageUploader
end
