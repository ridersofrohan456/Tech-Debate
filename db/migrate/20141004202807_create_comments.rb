class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :authored_by
      t.text :description
      t.integer :votes
      t.integer :debate_id
      t.timestamps
    end
  end
end
