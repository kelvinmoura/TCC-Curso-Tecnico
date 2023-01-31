class CreatePostComments < ActiveRecord::Migration[5.2]
  def change
    create_table :post_comments do |t|
      t.references :publication, foreign_key: true
      t.references :user, foreign_key: true
      t.text :comment, null: false

      t.timestamps
    end
  end
end
