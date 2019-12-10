class CreateMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :menus do |t|
      t.string :title
      t.float :price
      t.string :category
      t.string :day

      t.timestamps
    end
  end
end
