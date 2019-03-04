class CreateScoreBoards < ActiveRecord::Migration[5.2]
  def change
    create_table :score_boards do |t|
      t.reference :owner

      t.timestamps
    end
  end
end
