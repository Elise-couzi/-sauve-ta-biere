class AddColumntoUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :manager, :boolean, default: false
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :address, :string
  end
end
