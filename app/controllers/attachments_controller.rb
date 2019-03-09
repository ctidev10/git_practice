class AttachmentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_attachment, only: [:destroy,:show]
  before_action :set_product, only: [:destroy,:show]
  before_action :authenticate_owner

  	def show
  		send_file @attachment.archivo.path
  	end

	def new
	end

	def create
		@attachment = Attachment.new(attachment_params)

		if@attachment.save
			redirect_to @attachment.product,notice: "Se guardó el archivo adjunto"
		else
			redirect_to @product, notice: "No se pudo guardar el archivo adjunto"
		end

	end

	def destroy
		@attachment.destroy
		redirect_to @product
	end

 private 
 	def set_attachment
 		@attachment = Attachment.find(params[:id])
 	end

 	def set_product
 		@product = @attachment.product
 	end

	def authenticate_owner

		if params.has_key? :attachment 
			@product = Product.find(params[:attachment][:product_id])
		end
		if @product.nil? || @product.user != current_user
			raise @product.inspect
			redirect_to root_path, notice: "No puedes editar este producto..."
			return
		end 
	end

	def attachment_params
		params.require(:attachment).permit(:product_id,:archivo)
	end
end