class AddServiceLinkToService < ActiveRecord::Migration[5.2]
  def change
    add_column :services, :service_link, :text
  end
end
