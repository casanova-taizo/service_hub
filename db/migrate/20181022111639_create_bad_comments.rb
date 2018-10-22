class CreateBadComments < ActiveRecord::Migration[5.2]
  def change
    create_table :bad_comments do |t|

      t.timestamps
    end
  end
end
