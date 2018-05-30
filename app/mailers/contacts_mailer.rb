class ContactsMailer < ApplicationMailer
  def sent_email(contacts)
    @contacts = contacts
    mail(to: 'xakep0k74@gmail.com', subject: "new email")
  end
end
