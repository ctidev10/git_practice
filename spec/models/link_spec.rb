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

require 'rails_helper'

RSpec.describe Link, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
