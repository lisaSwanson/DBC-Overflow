class Answer < ActiveRecord::Base
	has_many :responses, as: :responded_to
	has_many :votes, as: :vote_for
	belongs_to :user
  
end
