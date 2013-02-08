Spree::AppConfiguration.class_eval do
  preference :ph_store_credit_minimum , :float, :default => 30.0
  preference :ph_store_credit_rate , :float, :default => 0.5
  preference :ph_store_credit_bonus_minimum , :float, :default => 100
  preference :ph_store_credit_bonus_rate , :float, :default => 0.01
end
Spree::Config.use_store_credit_minimum = 0 # do not change, this is done to disable spree_store's validation.