class Contacts < ActionMailer::Base
  default from: "r.cuadra2010@gmail.com"

  def contact_email(contact) 
    @contact = contact 
    mail(to: r.cuadra2010@gmail.com, from: r.cuadra2010@gmail.com, :subject => "Prueba") 
  end 
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact.ask_info.subject
  #
  def ask_info
    @greeting = "Hi"

    mail to: "r.cuadra2010@gmail.com"
  end
end
