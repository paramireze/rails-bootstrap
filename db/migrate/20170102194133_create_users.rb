class CreateUsers < ActiveRecord::Migration[5.0]
  def up
    create_table :users do |t|
      t.string "first_name", :limit => 25
      t.string "last_name", :limit => 50
      t.string "email", :default => '', :null => true, :limit => 75
      t.string "username", :null => false, :unique => true
      t.string "password_digest", :limit => 40
      t.boolean "deleted", :null => true
      t.timestamps
    end
  end

  def down
    drop table :users
  end
end
