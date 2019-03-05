class CreateUserScoreBoards < ActiveRecord::Migration[5.2]
  def change
    create_table :user_score_boards do |t|
      t.references :score_board, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
