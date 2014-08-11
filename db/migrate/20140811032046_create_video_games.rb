class CreateVideoGames < ActiveRecord::Migration
  def change
    create_table :video_games do |t|
      t.string :title
      t.string :console
      t.string :category
      t.string :comment
      t.boolean :on_loan
      t.boolean :played
      t.boolean :is_digital
      t.boolean :is_owned

      t.timestamps
    end
  end
end
