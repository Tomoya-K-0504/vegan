class SessionsController < ApplicationController

  def new
      
  end

  def home
    render 'home'
  end

  def create
    user = User.find_by(email: params[:email].downcase)
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      if user.role == 2
        flash[:success] = "ログインしました。"
        redirect_to clinics_path
      elsif user.role == 1
        flash[:success] = "管理者としてログインしました。"
        redirect_to clinics_path
      end
    else
      flash[:danger] = "メールアドレス、またはパスワードに間違いがあります。"
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = "ログアウトしました。"
    redirect_to root_path
  end

end