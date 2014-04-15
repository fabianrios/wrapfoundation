class Template < ActiveRecord::Base
  attr_accessible :browser, :category, :compatible, :description, :exclusive, :extended, :multiple, :name, :preprocessor, :preview, :price, :screenshot, :tag, :term, :version
  
  has_attached_file :screenshot, styles: {
     thumb: '100x100>',
     square: '200x200#',
     full: '300x300>'
   }
  
  validates_presence_of :name, :price, :version, :description, :category
  validates_attachment_content_type :screenshot, :content_type => %w(image/jpeg image/jpg image/png)
  
  attr_accessor :screenshot_file_name
  attr_accessor :screenshot_content_type
  attr_accessor :screenshot_file_size
  attr_accessor :screenshot_updated_at
  
  
  # This method associates the attribute ":screenshot" with a file attachment
  has_attached_file :screenshot,
  :storage => :s3,
  :bucket => 'wrapping',
  :s3_host_name => 's3-us-west-2.amazonaws.com',
  styles: {
      thumb: '60x60#',
      home: '280x>',
      large: '640x>'
  },
  :default_url => "http://placehold.it/480x150&text=default",
  :convert_options => { :all => '-strip -trim' }

  
end
