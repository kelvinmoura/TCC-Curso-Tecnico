class AddFieldsToAdmins < ActiveRecord::Migration[5.2]
  def change
    add_column :admins, :full_name, :string
    add_column :admins, :identification, :string
    add_column :admins, :birth_date, :date
    add_column :admins, :age, :integer
    add_column :admins, :role, :integer
    add_column :admins, :description, :text
    add_column :admins, :image, :string
  end
end
