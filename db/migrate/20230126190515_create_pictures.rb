class CreatePictures < ActiveRecord::Migration[7.0]
  def change
    create_table :pictures do |t|
      t.string :url
      t.string :product_id

      t.timestamps
    end
  end
end