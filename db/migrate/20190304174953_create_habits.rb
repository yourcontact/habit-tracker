class CreateHabits < ActiveRecord::Migration[5.2]
  def change
    create_table :habits do |t|
      t.references :user, index: true
      t.string :name
      t.references :unit, index: true
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
