class AddPhotoToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :photo_url, :string, default: 'https://images.unsplash.com/photo-1576271758686-3dabd9c6aaed?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80'
  end
end
