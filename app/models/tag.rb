class Tag < ActiveRecord::Base
	has_many :tag_maps
	validates :name, uniqueness: { case_sensitive: false }
end
