class AddMultipulImages < ActiveRecord::Migration[7.0]
  def change
    add_column :images, :image_url2, :string
    add_column :images, :image_url3, :string
    add_column :images, :image_url4, :string
  end
end
