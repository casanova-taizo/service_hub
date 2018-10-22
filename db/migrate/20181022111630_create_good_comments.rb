class CreateGoodComments < ActiveRecord::Migration[5.2]
  def change
    create_table :good_comments do |t|

      t.timestamps
    end
  end
end
