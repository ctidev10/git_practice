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

require 'rails_helper'

RSpec.describe Product, type: :model do
  it{ should validate_presence_of :name}
  it{ should validate_presence_of :user}
  it{ should validate_presence_of :pricing}
  
  #it "should validate pricing > 0" do
  #	product = FactoryBot.create(:product)
  #	puts product.inspect
  #end
end
