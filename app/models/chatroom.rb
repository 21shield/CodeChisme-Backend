class Chatroom < ApplicationRecord
    has_many :messages , dependent: :destroy
    has_many :users, through: :messages 
    validates :title, presence: true



end
