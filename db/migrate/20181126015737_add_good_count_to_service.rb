class AddGoodCountToService < ActiveRecord::Migration[5.2]
  def change
    add_column :services, :goodcount, :integer
  end
end
