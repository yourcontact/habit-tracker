class CreateHabits < ActiveRecord::Migration[5.2]
  def change
    create_table :habits do |t|
      t.references :user, index: true
      t.string :name
      t.references :unit, index: true
      t.integer :count, index: true
      t.boolean :daily, default: true
      t.string :days, array: true, default: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun']
      t.time :reminder
      t.integer :score
      t.integer :status
      t.integer :ratio

      t.timestamps
    end
  end
end
