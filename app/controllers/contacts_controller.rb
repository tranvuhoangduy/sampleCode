class ContactsController < ApplicationController

	def index
		@contacts = Contact.all
	end

	def new
		@contact = Contact.new

	end

	def create
		@contact = Contact.new(contact_params)

		name = params[:contact][:name]
		email = params[:contact][:email]
		body = params[:contact][:body]

		ContactMailer.contact_email(name,email,body).deliver

		if @contact.save
			flash[:success] = "Message sent"
			flash[:info] = "Message has not been sent"
			flash[:warning] = "Message has not been sent"
			flash[:danger] = "Message has not been sent"

			redirect_to new_contact_path
		else
			flash[:danger] = "Message has not been sent"
			redirect_to new_contact_path
		end
	end

	private
	def contact_params
		params.require(:contact).permit(:name, :email , :comments)
	end
end