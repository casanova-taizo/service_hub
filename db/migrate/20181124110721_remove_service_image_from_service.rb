class RemoveServiceImageFromService < ActiveRecord::Migration[5.2]
  def change
    remove_column :services, :service_image, :string
  end
end
