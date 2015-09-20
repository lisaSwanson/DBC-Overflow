class User < ActiveRecord::Base
  # has_secure_password
  include BCrypt

  has_many :responses 
  has_many :questions
  has_many :answers

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  validates :email, uniqueness: { case_sensitive: false }
  validates_format_of :email, :with => /@/, :message => "Email addreess must include @ sign."
	validates_presence_of :username, :email, :password

end
