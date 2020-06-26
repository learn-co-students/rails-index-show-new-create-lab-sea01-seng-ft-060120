class Coupon < ActiveRecord::Base
    def display_coupon
        self.store + " " + self.coupon_code
    end
end
