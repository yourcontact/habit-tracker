class CreateScoreBoards < ActiveRecord::Migration[5.2]
  def change
    create_table :score_boards do |t|
      t.integer :total_score

      t.timestamps
    end
  end
end
