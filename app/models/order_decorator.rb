module Spree
  Order.class_eval do

    def finalize_with_add_users_credit!
      finalize_without_add_users_credit!
      add_users_credit
    end

    alias_method_chain :finalize!, :add_users_credit

    def add_users_credit
      return unless completed? and user.present?

      added_credits_amount = (self.total / 10).round
      user.store_credits.create :amount => added_credits_amount,
                                :remaining_amount => added_credits_amount,
                                :reason => "For purchasing products."
    end

  end
end
