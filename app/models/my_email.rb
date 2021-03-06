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

class MyEmail < ApplicationRecord
	validates_presence_of :email,message: "Error olvidaste colocar el correo"
	validates_uniqueness_of :email,message: "El correo ya se encuetra registrado"
	validates_format_of :email, with: Devise::email_regexp
end
