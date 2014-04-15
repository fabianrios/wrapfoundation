class Template < ActiveRecord::Base
  attr_accessible :browser, :category, :compatible, :description, :exclusive, :extended, :multiple, :name, :preprocessor, :preview, :price, :screenshot, :tag, :term, :version
  
  validates_presence_of :name, :price, :version, :description, :category
end
