class User < ApplicationRecord
    has_secure_password
    has_many :messages, dependent: :destroy
    has_many :chatrooms, through: :messages, dependent: :destroy
    validates :email, uniqueness: { case_sensitive: false }
    validates :username, uniqueness: { case_sensitive: false }



end
