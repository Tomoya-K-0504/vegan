class User < ApplicationRecord
  enum role: { member: 1, admin: 2 }
  enum sex: { male: 1, female: 2 }

  has_secure_password
  validates :password, presence: true, length: { minimum: 1 }
end
