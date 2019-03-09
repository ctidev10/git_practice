# == Schema Information
#
# Table name: shopping_carts
#
#  id         :bigint(8)        not null, primary key
#  status     :string           default("created")
#  ip         :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryBot.define do
  factory :shopping_cart do
    status { 1 }
    ip { "MyString" }
  end
end
