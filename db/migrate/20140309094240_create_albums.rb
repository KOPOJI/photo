class CreateAlbums < ActiveRecord::Migration
  def change
    drop_table :albums if table_exists? :albums
    create_table :albums do |t|
      t.string :name
      t.string :album_url, null: true
      t.text :description
      t.string :image
      t.integer :status, limit: 1

      t.belongs_to :user

      t.timestamps
    end
  end
end
