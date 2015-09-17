class Response < ActiveRecord::Base
	belongs_to :responded_to, polymorphic: true
	belongs_to :user
end

