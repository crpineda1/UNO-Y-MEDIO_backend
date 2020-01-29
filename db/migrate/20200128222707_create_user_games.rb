class CreateUserGames < ActiveRecord::Migration[6.0]
  def change
    create_table :user_games do |t|
      t.string :user_id
      t.string :game_id
      t.boolean :win
      t.integer :points

      t.timestamps
    end
  end
end
