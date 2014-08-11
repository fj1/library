class AddUserIdToVideoGame < ActiveRecord::Migration
  def change
    add_column :video_games, :user_id, :integer
  end
end
