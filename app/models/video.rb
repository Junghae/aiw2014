class Video < ActiveRecord::Base
  validates :link, presence: true
  validates :description, presence: true

end
