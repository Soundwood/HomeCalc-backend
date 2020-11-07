class User < ApplicationRecord
    has_secure_password
    has_many :scenarios
    validates :username, uniqueness: true
end
