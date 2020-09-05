class CreateChatrooms < ActiveRecord::Migration[6.0]
  def change
    create_table :chatrooms do |t|
      t.string :title
      t.integer :amtPeople

      t.timestamps
    end
  end
end
