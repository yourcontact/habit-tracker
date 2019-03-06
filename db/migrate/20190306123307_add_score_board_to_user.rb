class AddScoreBoardToUser < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :score_board, foreign_key: true
  end
end
