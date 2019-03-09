ActionMailer::Base.smtp_settings = {
	address: "smtp.gmail.com",
	port: 587,
	domain: "gmail.com",
	user_name: "diegomp1407@gmail.com",
	password: "Diegolin222",
	authentication: :login,
	enable_starttls_auto:true
}