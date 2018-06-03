class SessionsController < ApplicationController

  def new
  end

  def home
  end

  def member_home
  end

  def whats_vc
  end

  def flow_to_join
  end

  def agree_to_condition
  end

  def login
    user = User.find_by(email: params[:email].downcase)
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      if user.role == "member"
        flash[:success] = "ログインしました。"
      elsif user.role == "admin"
        flash[:success] = "管理者としてログインしました。"
      end
      redirect_to "/member-home"
    else
      flash[:danger] = "メールアドレス、またはパスワードに間違いがあります。"
      redirect_to root_path
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = "ログアウトしました。"
    redirect_to root_path
  end

end