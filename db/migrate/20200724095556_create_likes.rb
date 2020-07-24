class CreateLikes < ActiveRecord::Migration[6.0]
  def up
    create_table :likes do |t|
      t.references :post, foreign_key: true, null: false
      t.references :user, foreign_key: true, null: false

      t.timestamps
    end
  end

  def down
    drop_table :likes
  end
end
