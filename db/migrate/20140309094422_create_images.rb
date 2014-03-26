class CreateImages < ActiveRecord::Migration
  def change
    drop_table :images if table_exists? :images
    create_table :images do |t|
      t.string :name
      t.text :description
      t.string :image
      t.integer :status, limit: 1

      t.belongs_to :albums
      t.belongs_to :users

      t.timestamps
    end
  end
end
