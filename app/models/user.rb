class User < ApplicationRecord
  has_secure_password

  validates :username, presence: true, uniqueness: true, 
    length: { in: 3..15 },
    format: { 
      with: /\A[a-z-A-Z.0-9]+\z/,
      message: :format
    }
  validates :email, presence: true, uniqueness: true,
    format: {
      with: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i,
      message: :format
    }
  validates :password, presence: true, length: { minimum: 6 }

end
