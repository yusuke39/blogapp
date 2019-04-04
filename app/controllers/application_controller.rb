class ApplicationController < ActionController::Base
    # devise_parameter_sanitizer.permit(:sign_in, keys: [:name])
    # devise_parameter_sanitizer.permit(:account_update, keys: [:name])
before_action :configure_permitted_parameters, if: :devise_controller?

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname])
    end

end

