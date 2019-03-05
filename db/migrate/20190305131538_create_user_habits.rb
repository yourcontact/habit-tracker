class CreateUserHabits < ActiveRecord::Migration[5.2]
  def change
    create_table :user_habits do |t|
      t.user :references
      t.habit :references

      t.timestamps
    end
  end
end
