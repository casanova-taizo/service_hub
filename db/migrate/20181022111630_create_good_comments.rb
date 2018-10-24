class CreateGoodComments < ActiveRecord::Migration[5.2]
  def change
    create_table :good_comments do |t|
      t.integer :user_id, foreign_key: true
      t.integer :comment_id, foreign_key: true

      t.timestamps
    end
  end
end
