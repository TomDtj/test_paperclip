class WeblogAsset < ActiveRecord::Base
  belongs_to :post
  has_attached_file :data, :url => "/system/:attachment/:id/:style/:filename"
  validates_attachment_content_type :data, :content_type => %w(image/jpeg image/jpg image/png)
end
