class AddIndexToUserSession < ActiveRecord::Migration[5.0]
  def change
    add_index :user_sessions, :email, unique: true
  end
end
