# == Schema Information
#
# Table name: products
#
#  id                  :bigint(8)        not null, primary key
#  name                :string
#  pricing             :integer
#  description         :text
#  user_id             :bigint(8)
#  avatar_file_name    :string
#  avatar_content_type :string
#  avatar_file_size    :bigint(8)
#  avatar_updated_at   :datetime
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

FactoryBot.define do
  factory :product do
    name { "nada" }
    pricing  { "9.99" }
    description { "MyText" }
    association :user, factory: :user
  end
end
