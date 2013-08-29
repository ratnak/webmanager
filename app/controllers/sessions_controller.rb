class SessionsController < Devise::SessionsController
  layout 'webmanager'
  # GET /resource/sign_in
  def new
    super
  end

  def destroy
   super
  end
end
