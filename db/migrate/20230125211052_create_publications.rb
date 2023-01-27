class CreatePublications < ActiveRecord::Migration[5.2]
  def change
    create_table :publications do |t|
      t.references :admin, foreign_key: true
      t.references :subject, foreign_key: true
      t.string :title, null: false
      t.text :description, null: false
      t.string :image, null: false
      t.string :reference_link, null: false

      t.timestamps
    end
  end
end
