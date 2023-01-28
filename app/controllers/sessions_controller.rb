class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(email: params[:email])
    if @user && @user.valid_password?(params[:password])
       session[:user_id] = @user.id
       redirect_to user_path(@user), notice: "ログインしました。"
    else
      render :new, notice: "メールアドレスもしくはパスワードが違います。"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to after_sitn_out_path_for, notice: "ログアウトしました。"
  end
  
end
