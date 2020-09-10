class Message < ApplicationRecord
  belongs_to :user
  belongs_to :chatroom


  def username
    self.user.username
  end

  def date 
    self.created_at.strftime("%I:%M%p")
  end

end

