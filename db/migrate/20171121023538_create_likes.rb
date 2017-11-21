class CreateLikes < ActiveRecord::Migration[5.1]
  def change
    create_table :likes do |t|
      t.references :user, foreign_key: true
      t.references :tweet, foreign_key: true
      t.boolean :is_liked, default: false

      t.timestamps
    end
  end
end
