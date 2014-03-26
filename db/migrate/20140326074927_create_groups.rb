class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :group, default: ''

      t.timestamps
    end
  end
end
