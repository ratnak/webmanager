class PasswordsController < Devise::PasswordsController
  #before_filter :authenticate_user! #, :only => :token
  layout 'webmanager'

end 
