class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.text :address
      t.decimal :total_price
      t.string :menu_titles

      t.timestamps
    end
  end
end
