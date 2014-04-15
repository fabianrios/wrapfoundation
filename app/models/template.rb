class Template < ActiveRecord::Base
  attr_accessible :browser, :category, :compatible, :description, :exclusive, :extended, :multiple, :name, :preprocessor, :preview, :price, :screenshot, :tag, :term, :version
  
  has_attached_file :screenshot, styles: {
     thumb: '100x100>',
     square: '200x200#',
     full: '300x300>'
   }
  
  validates_presence_of :name, :price, :version, :description, :category, :screenshot, :content_type => /\Aimage\/.*\Z/
  
  attr_accessor :screenshot_file_name
  attr_accessor :screenshot_content_type
  attr_accessor :screenshot_file_size
  attr_accessor :screenshot_updated_at
end
