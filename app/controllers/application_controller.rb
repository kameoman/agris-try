class ApplicationController < ActionController::Base
  
before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    case resource
    when Admin
      admins_path          #pathは設定したい遷移先へのpathを指定
    when User
      agris_path              
    end
  end

  
  # protectedは呼び出された他のコントローラからも参照できます。
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
  
  
end
