class AddPhotoToBars < ActiveRecord::Migration[6.0]
  def change
    add_column :bars, :photo, :text
  end
end
