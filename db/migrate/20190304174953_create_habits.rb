class CreateHabits < ActiveRecord::Migration[5.2]
  def change
    create_table :habits do |t|
      t.reference :user
      t.string :name
      t.reference :unit
      t.integer :repeat
      t.integer :days
      t.time :reminder
      t.integer :score
      t.integer :status
      t.integer :ratio

      t.timestamps
    end
  end
end
