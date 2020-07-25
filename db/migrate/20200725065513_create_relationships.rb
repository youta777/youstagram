class CreateRelationships < ActiveRecord::Migration[6.0]
  def up
    create_table :relationships do |t|
      t.references :user, foreign_key: true
      t.references :follow, foreign_key: { to_table: :users } # 外部キーとしてユーザテーブルを参照

      t.timestamps

      t.index [:user_id, :follow_id], unique: true # 重複無し
    end
  end

  def down
    drop_table :relationships
  end
end
