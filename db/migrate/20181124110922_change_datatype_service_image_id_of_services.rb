class ChangeDatatypeServiceImageIdOfServices < ActiveRecord::Migration[5.2]
  def change
  	change_column :services, :service_image_id, :text
  end
end
