class CreatePublicationEvaluations < ActiveRecord::Migration[5.2]
  def change
    create_table :publication_evaluations do |t|
      t.references :publication, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :assessment, default: 0

      t.timestamps
    end
  end
end
