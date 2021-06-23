class CreateBeers < ActiveRecord::Migration[6.0]
  def change
    create_table :beers do |t|
      t.string :name
      t.integer :alcohol_degree
      t.string :category
      t.string :description

      t.timestamps
    end
  end
end
