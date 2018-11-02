class ChangeColumnComments < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :service_id, :string
    remove_column :comments, :comment_id, :string
  end
end
