# == Schema Information
#
# Table name: in_shopping_carts
#
#  id               :bigint(8)        not null, primary key
#  product_id       :bigint(8)
#  shopping_cart_id :bigint(8)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

FactoryBot.define do
  factory :in_shopping_cart do
    product { nil }
    shopping_cart { nil }
  end
end
