class CreateBarBeers < ActiveRecord::Migration[6.0]
  def change
    create_table :bar_beers do |t|
      t.integer :quantity
      t.integer :selling_price
      t.references :bar, null: false, foreign_key: true
      t.references :beer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
