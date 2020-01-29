class UserGame < ApplicationRecord
  validates :user_id, presence: :true
  validates :game_id, presence: :true
  
end
