module Spree
  Order.class_eval do

    attr_accessible :added_credits_amount
    before_save :add_users_credit, :if => "self.user.present?"

    private

    def add_users_credit
      self.added_credits_amount = (self.total / 10).round
      user.store_credits.create :amount => self.added_credits_amount,
                                :remaining_amount => self.added_credits_amount,
                                :reason => "For purchasing products."
    end

  end
end
