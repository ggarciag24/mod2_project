class User < ApplicationRecord
  has_many :teams
  has_secure_password
  validates :name, presence: true
  validates :username, presence: true, uniqueness: { case_sensitive: false }
  validates :email, presence: true, uniqueness: { case_sensitive: false }

end
