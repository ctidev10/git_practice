# == Schema Information
#
# Table name: my_payments
#
#  id               :bigint(8)        not null, primary key
#  email            :string
#  ip               :string
#  status           :string
#  fee              :decimal(6, 2)
#  paypal_id        :string
#  tota             :decimal(8, 2)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  shipping_cart_id :bigint(8)
#  shopping_cart_id :bigint(8)
#

require 'rails_helper'

RSpec.describe MyPayment, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
