class AddServiceReleaseDate < ActiveRecord::Migration[5.2]
  def change
  	add_column :services, :release_date, :string
  end
end
