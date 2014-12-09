require 'paperclip_processors/watermark'
class Asset < ActiveRecord::Base
  has_attached_file :data, :processors => [:watermark],
  :styles => {
    :original => {
      :geometry => '550x400>',
      :watermark_path => "#{Rails.root}/public/images/rails.png",#水印图片所在位置
      :position => 'Center' ＃添加的水印在图片哪个位置
    }
  }
end  
