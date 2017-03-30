class CreateUserSessions < ActiveRecord::Migration[5.0]
  def change
    create_table :user_sessions do |t|
      t.string :user_name
      t.string :email
      t.string :password
      t.boolean :active

      t.timestamps
    end
  end
end
