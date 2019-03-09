# == Schema Information
#
# Table name: my_emails
#
#  id         :bigint(8)        not null, primary key
#  email      :string
#  ip         :string
#  state      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryBot.define do
  factory :my_email do
    #email "diego_lin222@hotmail.com"
    #ip "192.168.1.2"
    #state 1
  end
end
