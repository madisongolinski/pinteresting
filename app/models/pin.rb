class Pin < ActiveRecord::Base
	belongs_to :user
	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]
	
	def fix_image_url(type)
		type == :orginal unless !type.nil?
		matches = image.url(type).to_s.match(/%(.*)/)
		first = matches[1] # this is the first () group
		string_to_return = image.url(type).to_s.sub! '%'+first, ''
		string_to_return
	end

	validates :image, presence: true
	validates :description, presence: true
end
