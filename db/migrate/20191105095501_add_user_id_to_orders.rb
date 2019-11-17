# frozen_string_literal: true

class AddUserIdToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :user_id, :integer
  end
end
