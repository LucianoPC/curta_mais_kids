class ChildrenEvent < ActiveRecord::Base
  mount_uploader :photo, PhotoUploader
end
