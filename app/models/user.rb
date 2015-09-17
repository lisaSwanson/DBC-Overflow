class User < ActiveRecord::Base
  # has_secure_password
  has_many :responses, 
  has_many :questions
  has_many :answers

  validates_uniqueness_of :email, :on => :create
  validates_format_of :email, :with => /@/, :message => "Email addreess must include @ sign."
	validates_presence_of, :username, :email, :password

end
