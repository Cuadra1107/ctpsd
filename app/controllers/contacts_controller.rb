class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

   def create
	    @contact= Contact.new
	    if @contact.save
	      Contacts.contact_email(@contact).deliver
    end
  end
end
