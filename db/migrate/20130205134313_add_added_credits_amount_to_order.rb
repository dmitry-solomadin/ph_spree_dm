class AddAddedCreditsAmountToOrder < ActiveRecord::Migration
  def change
    add_column :spree_orders, :added_credits_amount, :decimal
  end
end
