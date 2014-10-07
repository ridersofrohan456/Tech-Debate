class RemoveDebatesUsers < ActiveRecord::Migration
  def change
    drop_table :debates_users
  end
end
