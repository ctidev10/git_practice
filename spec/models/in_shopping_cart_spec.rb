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

require 'rails_helper'

RSpec.describe InShoppingCart, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
