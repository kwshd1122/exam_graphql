class CreateTweets < ActiveRecord::Migration[7.0]
  def change
    create_table :tweets do |t|
      t.text :article
      t.references :user, foreign_key: true, null: false

      t.timestamps
    end
  end
end
