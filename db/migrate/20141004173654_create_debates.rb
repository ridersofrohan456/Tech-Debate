class CreateDebates < ActiveRecord::Migration
  def change
    create_table :debates do |t|
      t.string :title
      t.text :description
      t.string :winner

      t.timestamps
    end
  end
end
