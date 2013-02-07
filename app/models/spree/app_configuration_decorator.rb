Spree::AppConfiguration.class_eval do
  preference :ph_store_credit_minimum , :float, :default => 30.0
end
Spree::Config.use_store_credit_minimum = 0