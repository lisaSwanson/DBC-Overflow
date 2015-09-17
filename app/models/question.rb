class Question < ActiveRecord::Base
	has_many :tag_maps
	has_many :responses, as: :responded_to
	has_many :votes, as: :vote_for
	belongs_to :user
end
