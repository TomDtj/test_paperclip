class WeblogAsset < ActiveRecord::Base
  belongs_to :post
  has_attached_file :data, :url => "/system/:attachment/:id/:style/:filename"
end
