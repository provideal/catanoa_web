class Contact < ActiveRecord::Base
  
  attr_accessible :email, :name, :remark, :company, :phone
  
  validates_presence_of :name
  validates_presence_of :email
  validates_presence_of :remark
  
end