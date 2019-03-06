class AddAttributeToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :username, :string, default: "", null: false
  end
end
