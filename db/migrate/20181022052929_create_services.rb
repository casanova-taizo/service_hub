class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.string :service_name
      t.string :release_date
      t.text :service_summary
      t.string :service_image
      t.string :service_campany
      t.text :service_link
      t.text :related_link
 	    t.integer :category_id, foreign_key: true
      t.text :tag_list
      t.timestamps
    end
  end
end
