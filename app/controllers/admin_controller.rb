class AdminController < ApplicationController

  unless Rails.env.development?
    before_action :authenticate_user!
  end
  
  layout 'admin_application'

end