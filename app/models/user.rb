class User < ApplicationRecord
    has_secure_password
    has_many :messages
    has_many :chatrooms, through: :messages
    validates :email, uniqueness: { case_sensitive: false }
    validates :username, uniqueness: { case_sensitive: false }



end
