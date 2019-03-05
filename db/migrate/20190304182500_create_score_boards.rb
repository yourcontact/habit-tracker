class CreateScoreBoards < ActiveRecord::Migration[5.2]
  def change
    create_table :score_boards do |t|
      t.references :owner, index: true

      t.timestamps
    end
  end
end
