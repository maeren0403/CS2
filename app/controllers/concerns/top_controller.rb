class TopController < ApplicationController
    def main
        if session[:login_uid]
           session[:login_pass]
            render "main"
        else
            render "login"
        end
    end
   
    def login
       if User.find_by(uid: params[:uid], pass: params[:pass])
           session[:login_uid] = params[:uid]
           session[:login_pass] = params[:pass]
           redirect_to root_path
       else
            render 'error'
       end
    end
    
    def logout
        session.delete(:login_uid)
        session.delete(:login_pass)
        redirect_to root_path
    end
end
