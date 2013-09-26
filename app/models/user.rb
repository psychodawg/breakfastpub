class User < ActiveRecord::Base
  before_save { self.email = email.downcase }
  validates :name, presence: true, length:{minimum:1, maximum:21}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :email, presence:true, uniqueness:{ case_sensitive: false }, format:{with:VALID_EMAIL_REGEX}
  validates :password, length: { minimum: 6 }, presence:true
  has_secure_password
end

