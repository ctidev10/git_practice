class Stores::Paypal
	include PayPal::SDK::REST
	attr_accessor :payment, :total,:return_url,:cancel_url,:items

	def initialize(options)
		self.total = options[:total]
		self.items = options[:items]
		self.return_url = options[:return_url]
		self.cancel_url = options[:cancel_url]
	end

	def process_payment
		self.payment = Payment.new(payment_options)
 		self.payment
		
	end

	def process_card(card_data)

		 options = payment_options

		 options[:payer][:payment_method] = "credit_card"
		 options[:payer][:funding_instruments] = [{
		 		credit_card: {
		 			type: CreditCardValidator::Validator.card_type(card_data[:number]),
		 			number: card_data[:number],
		 			expire_month: card_data[:expire_month],
		 			expire_year: card_data[:expire_year],
		 			cvv2: card_data[:cvv2]
		 		}
		 }]

		 self.payment = Payment.new(options)
		 self.payment

	end

	def payment_options
		{
 			intent: "sale",
 			payer:{
 				payment_method: "paypal"
 			},
 			transactions: [
 				{
 					item_list: {
 						items: items
 					},
 					amount:{
 						total: (total / 100),
 						currency: "USD"
 					},
 					description: "Compra de tus productos en nuestra plataforma"
 				}
 			],
 			redirect_urls: {
 				return_url: self.return_url,
 				cancel_url: self.cancel_url
 			}
 		}
	end

	def self.get_email(payment_id)
		payment = Payment.find(payment_id)
		payment.payer.payer_info.email
	end

	def self.checkout(payer_id,payment_id,&block)
		payment = Payment.find(payment_id)

		if payment.execute(payer_id: payer_id)
			yield if block_given?
		end
	end
end