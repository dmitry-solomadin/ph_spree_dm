Spree::AppConfiguration.class_eval do
  preference :ph_store_credit_minimum, :float, :default => 30.0
  preference :ph_store_credit_rate, :float, :default => 1 # rate per 10$
  preference :ph_store_credit_bonus_per_each, :integer, :default => 100
  preference :ph_store_credit_bonus_amount, :integer, :default => 10 # each ph_store_credit_bonus_per_each give this amount
end
Spree::Config.use_store_credit_minimum = 0 # do not change, this is done to disable spree_store's validation.