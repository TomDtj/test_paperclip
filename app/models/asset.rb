require 'paperclip_processors/watermark'
class Asset < ActiveRecord::Base
  has_attached_file :data, :processors => [:watermark],
  :styles => {
    :original => {
      :geometry => '550x400>',
      :watermark_path => "#{Rails.root}/public/rails.png",
      :position => 'Center'
    }
  }
  validates_attachment_content_type :data, :content_type => %w(image/jpeg image/jpg image/png)

end
