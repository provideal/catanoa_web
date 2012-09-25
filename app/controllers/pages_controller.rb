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
  end
  
  def login
  end
  
end