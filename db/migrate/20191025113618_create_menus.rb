class CreateMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :menus do |t|
      t.string :title
      t.float :price
      t.integer :category
      t.integer :day

      t.timestamps
    end
  end
end
