# encoding: utf-8
class PagesController < ApplicationController

  before_filter lambda {@navigation_item = params[:action]}
  
  def index
  end
  
  def details
  end
  
  def use_cases
  end
  
  def faq
  end
  
  def contact
    if request.post?
      @contact = Contact.new params[:contact]
      if @contact.valid?
        @contact.save
        flash[:notice] = 'Die Daten wurden gespeichert. Sie erhalten in Kürze eine Antwort zu Ihrer Kontaktanfrage.'
        ContactMailer.send_contact(@contact).deliver
        redirect_to contact_path
      else
        flash[:error] =  'Es ist ein Fehler aufgetreten: Mit * gekennzeichnete Felder sind Pflichtfelder!'
        render :contact
      end
      return 
    else
      @contact = Contact.new
    end
  end
  
  def toggle_login
    session[:login_visible] ||= false
    session[:login_visible] = !session[:login_visible] 
    render :json => {:login_visible => session[:login_visible]}
  end
  
end