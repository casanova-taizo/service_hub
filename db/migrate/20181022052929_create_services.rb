class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.string :service_name
      t.text :service_summary
      t.text :service_img
      t.string :service_campany
      t.text :related_link
 	  t.integer :category_id, foreign_key: true

      t.timestamps
    end
  end
end
