class Template < ActiveRecord::Base
  attr_accessible :browser, :category, :compatible, :description, :exclusive, :extended, :multiple, :name, :preprocessor, :preview, :price, :screenshot, :tag, :term, :version
  
  has_attached_file :screenshot, styles: {
     thumb: '100x100>',
     square: '200x200#',
     full: '300x300>'
   }
  
  validates_presence_of :name, :price, :version, :description, :category, :screenshot, :content_type => /\Aimage\/.*\Z/
end
