module UserHelper
    def current_user
        @current_user ||= User.find_by(id: session[:user_id])
    end

    def user_signed_in?
        !current_user.nil?
    end
    
    def authenticate_user!
        redirect_to '/user/sign_in' unless user_signed_in?
    end
    
end