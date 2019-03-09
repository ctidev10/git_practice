# == Schema Information
#
# Table name: links
#
#  id              :bigint(8)        not null, primary key
#  product_id      :bigint(8)
#  expiration_date :datetime
#  downloads       :integer
#  downloads_limit :integer
#  custom_id       :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  email           :string
#

FactoryBot.define do
  factory :link do
    product { nil }
    expiration_date { "2019-03-07 17:12:08" }
    downloads { 1 }
    downloads_limit { 1 }
    custom_id { "MyString" }
  end
end
