class TopController < ApplicationController
    def main
        if session[:login_uid]
            render "main"
        else
            render "login"
        end
    end
    
    def login
        user = User.find_by(uid: params[:uid])
        ps = BCrypt::Password.new(user.pass)  #newは認証、createは生成
        if ps == params[:pass]
            session[:login_uid] = user.uid   #, pass: params[:pass]
            redirect_to root_path
        else
            render 'error'
        end
    end
    
    def logout
        session.delete(:login_uid)
        redirect_to root_path
    end 
end
