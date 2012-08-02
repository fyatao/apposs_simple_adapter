module AppossSimpleAdapter
  module Auth
    def sso_auth
      return if current_user
      if Rails.env == 'cucumber' or ENV['NOLOGIN']=='yes'
        user = User.find_or_create_by_email params['login_as']
        session[:user_id] = user.id
      else
        redirect_to '/auth/google_oauth2'
      end
    end
    
    def current_user
      @user ||= User.find(session[:user_id]) if session[:user_id]
    end

    def callback
      begin
        email = env['omniauth.auth']['info']['email']
        user = User.find_or_create_by_email email
        session[:user_id] = user.id
        redirect_to '/'
      rescue Exception => e
        Rails.logger.error e.backtrace.join("\n")
        render :text => "sign in failed."
      end
    end
  end
end

