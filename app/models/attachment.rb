# == Schema Information
#
# Table name: attachments
#
#  id                   :bigint(8)        not null, primary key
#  product_id           :bigint(8)
#  archivo_file_name    :string
#  archivo_content_type :string
#  archivo_file_size    :bigint(8)
#  archivo_updated_at   :datetime
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

class Attachment < ApplicationRecord
  belongs_to :product
  validates :archivo, attachment_presence: true
  has_attached_file :archivo,path: ":rails_root/archivos/:id/:style/:filename"

  do_not_validate_attachment_file_type :archivo
end
