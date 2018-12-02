class AddGoodCountToComments < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :goodcount, :integer
  end
end
