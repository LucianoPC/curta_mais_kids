class ChildrenPlayroom < ActiveRecord::Base

  validates_presence_of :name, :description, :photo, :address, :phone, :photo

  mount_uploader :photo, PhotoUploader
end
