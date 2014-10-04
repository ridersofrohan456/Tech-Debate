class AddSideToComments < ActiveRecord::Migration
  def change
    add_column :comments, :side, :integer
  end
end
