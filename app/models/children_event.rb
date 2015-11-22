class ChildrenEvent < ActiveRecord::Base

  validates_presence_of :title, :description, :photo, :date_time

  mount_uploader :photo, PhotoUploader
end
