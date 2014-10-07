class RemoveDebatementTable < ActiveRecord::Migration
  def change
    drop_table :debatement
  end
end
