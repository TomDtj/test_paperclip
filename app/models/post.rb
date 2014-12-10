class Post < ActiveRecord::Base
  has_many :weblogAssets
  accepts_nested_attributes_for :weblogAssets
end
