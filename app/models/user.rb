class User
  include Mongoid::Document
  include Mongoid::Timestamps
  include BCrypt

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  field :first_name, type: String
  field :last_name, type: String
  field :email, type: String
  field :password_hash, type: String

  validates_format_of :email, with: VALID_EMAIL_REGEX
  validates_uniqueness_of :email

  has_secure_password

end
