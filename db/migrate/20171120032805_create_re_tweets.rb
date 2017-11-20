class CreateReTweets < ActiveRecord::Migration[5.1]
  def change
    create_table :re_tweets do |t|
      t.references :tweet, foreign_key: true
      t.references :user, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end
