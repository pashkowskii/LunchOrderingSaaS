class CreateCartItems < ActiveRecord::Migration[6.0]
  def change
    create_table :cart_items do |t|
      t.references :menu
      t.references :itemable, polymorphic: true
    end
  end
end
