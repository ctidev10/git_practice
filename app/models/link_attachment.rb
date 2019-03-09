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

class LinkAttachment < ApplicationRecord
  belongs_to :link
  belongs_to :attachment
  before_create :set_defaults

  def is_invalid?
  	#raise self.inspect
    (DateTime.now > self.expiration_date)
  end

  private

  def set_defaults
  	self.expiration_date = DateTime.now + 30.minutes
  	
  end

  
  
end
