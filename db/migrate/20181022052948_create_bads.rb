class CreateBads < ActiveRecord::Migration[5.2]
  def change
    create_table :bads do |t|
      t.integer :user_id, foreign_key: true
      t.integer :service_id, foreign_key: true

      t.timestamps
    end
  end
end
