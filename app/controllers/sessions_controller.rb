class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      if user.activated?
        log_in user
        params[:session][:remember_me] == '1' ? remember(user) : forget(user)
        redirect_to user
      else
        message  = "メールアドレスはまだ確認されていません。 "
        message += "メール内のURLをクリックしてメールアドレスの確認を行ってください。"
        flash[:warning] = message
        redirect_to login_url
      end
    else
      flash.now[:danger] = 'メールアドレスかパスワードが間違っています'
      render 'new'
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_path
  end
end
