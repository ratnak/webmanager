class RegistrationsController < Devise::RegistrationsController
  #before_filter :authenticate_user! #, :only => :token
  layout 'webmanager'
 
end 
