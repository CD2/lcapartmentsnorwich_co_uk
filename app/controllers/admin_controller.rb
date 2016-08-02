class AdminController < ApplicationController


  before_action :authenticate_user!

  if Rails.env.development?
    skip_before_action :authenticate_user!
  end
  
  layout 'admin_application'

end
