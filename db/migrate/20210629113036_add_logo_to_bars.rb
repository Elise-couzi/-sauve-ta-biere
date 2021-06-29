class AddLogoToBars < ActiveRecord::Migration[6.0]
  def change
    add_column :bars, :logo, :string
  end
end
