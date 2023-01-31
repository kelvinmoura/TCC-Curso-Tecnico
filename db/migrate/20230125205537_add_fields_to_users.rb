class AddFieldsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :full_name, :string, null: false
    add_column :users, :identification, :string, null: false
    add_column :users, :birth_date, :date, null: false
    add_column :users, :age, :integer, null: false
    add_column :users, :description, :text, null: false
    add_column :users, :image, :string, null: false, default: "img.jpg"
  end
end
