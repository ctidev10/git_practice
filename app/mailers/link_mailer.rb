class LinkMailer < ActionMailer::Base

	default from: "diegomp1407@gmail.com"

	def download_link(link)
		@link = link
		@product = link.product
		mail(to: link.email,subject:"Descarga los productos que adquisite en Tiendus.com")
	end
	
end
