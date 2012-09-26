# encoding: utf-8
class ContactMailer < ActionMailer::Base  
  default :from => "catanoa-mailer@metaminded.com"

  def send_contact(contact)
    @contact = contact

    mail(
      :to => 'team@metaminded.com',
      :subject => 'Neue Kontaktanfrage für catanoa'
    )
  end
  
end