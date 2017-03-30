class AddActiveToUser < ActiveRecord::Migration[5.0]
  def up
    change_column :user_sessions, :active, :boolean, :default => false
  end

  def down
    change_column :user_sessions, :active, :boolean, :default => nil
  end
end
