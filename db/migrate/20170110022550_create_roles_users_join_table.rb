class CreateRolesUsersJoinTable < ActiveRecord::Migration[5.0]
  def change
    create_join_table :roles, :users
  end
end
