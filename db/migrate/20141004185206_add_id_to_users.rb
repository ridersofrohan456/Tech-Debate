class AddIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :debate_id, :integer
  end
end
