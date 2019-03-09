class LinksController < ApplicationController
		before_action :find_link
		before_action :find_attachment_link, only: :download_attachment
		before_action :validate_link
		before_action :validate_attachment_link, only: :download_attachment

		def download
			@link.update_downloads
			@product = @link.product
			@link.create_attachment_links
			@link_attachments = @link.links

		end

		def download_attachment
			send_file(Rails.root.join("archivos","#{@link_attachment.attachment_id}","original",@link_attachment.attachment.archivo_file_name))
		end

		private
		

		def find_attachment_link
			@link_attachment = LinkAttachment.find(params[:attachment_id])
			
		end

		def validate_attachment_link
			#raise @link_attachment.inspect
			 if @link_attachment.is_invalid?
			 	redirect_to invalid_path, notice: "Expiró el timpo para descargar"
			 end
		end

		def find_model
			@link = Links.find(params[:id]) if params[:id]
		end

		def find_link
			@link = Link.find_by(custom_id:params[:id])
		end


		def validate_link
			if @link.nil? || @link.is_invalid?
				redirect_to invalid_path,notice: "El link de descarga no es valido o ha expirado"
			end
		end
end