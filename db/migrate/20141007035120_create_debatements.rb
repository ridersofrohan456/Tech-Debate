class CreateDebatements < ActiveRecord::Migration
  def change
    create_table :debatements do |t|
      t.column :user_id, :integer
      t.column :debate_id, :integer
      t.timestamps
    end
  end
end
