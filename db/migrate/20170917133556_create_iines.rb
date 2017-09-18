class CreateIines < ActiveRecord::Migration[5.0]
  def change
    create_table :iines do |t|
      t.references :user, foreign_key: true
      t.references :blog, foreign_key: true

      t.timestamps
    end
    add_index :iines,[:user_id,:blog_id],unique: true

  end
end
