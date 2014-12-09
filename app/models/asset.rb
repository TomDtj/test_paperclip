require 'paperclip_processors/watermark'
class Asset < ActiveRecord::Base
  has_attached_file :data, :processors => [:watermark],
  :styles => {
    :original => {
      :geometry => '550x400>',
      :watermark_path => "#{Rails.root}/public/images/rails.png",
      :position => 'Center'
    }
  }
end
