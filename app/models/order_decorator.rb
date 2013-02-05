module Spree
  Order.class_eval do

    attr_accessible :added_credits_amount

    def finalize_with_add_users_credit!
      add_users_credit
      finalize_without_add_users_credit!
    end

    alias_method_chain :finalize!, :add_users_credit

    private

    def add_users_credit
      self.added_credits_amount = (self.total / 10).round
      user.store_credits.create :amount => self.added_credits_amount,
                                :remaining_amount => self.added_credits_amount,
                                :reason => "For purchasing products."
    end

  end
end
