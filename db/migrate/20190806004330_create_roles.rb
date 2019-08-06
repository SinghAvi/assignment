class CreateRoles < ActiveRecord::Migration[5.2]
  def self.up
    create_table :roles do |t|
      t.string :title

      t.timestamps
    end

    create_table "roles_users", :id => false do |t|
      t.column "role_id", :integer
      t.column "user_id", :integer
    end
  end

  def self.down
    drop_table :roles
    drop_table :roles_users
  end
end
