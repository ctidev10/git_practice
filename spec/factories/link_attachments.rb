# == Schema Information
#
# Table name: link_attachments
#
#  id              :bigint(8)        not null, primary key
#  link_id         :bigint(8)
#  expiration_date :datetime
#  attachment_id   :bigint(8)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

FactoryBot.define do
  factory :link_attachment do
    link { nil }
    expiration_date { "2019-03-08 11:41:10" }
  end
end
