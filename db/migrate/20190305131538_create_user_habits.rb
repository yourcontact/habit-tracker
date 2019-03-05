class CreateUserHabits < ActiveRecord::Migration[5.2]
  def change
    create_table :user_habits do |t|
      t.references :user
      t.references :habit

      t.timestamps
    end
  end
end
