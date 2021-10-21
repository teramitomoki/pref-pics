class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.integer	   :prefecture_id, null: false
      t.integer    :genre_id,      null: false
      t.references :user,          null: false, foreign_key: true
      t.timestamps
    end
  end
end
