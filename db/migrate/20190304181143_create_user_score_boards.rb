class CreateUserScoreBoards < ActiveRecord::Migration[5.2]
  def change
    create_table :user_score_boards do |t|
      t.reference :scoreBoard
      t.reference :user

      t.timestamps
    end
  end
end
