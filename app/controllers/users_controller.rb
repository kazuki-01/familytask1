class UsersController < ApplicationController


  def new
    @user = User.new
  end

  def check
    Rails.logger.debug(params[:user_icon])
    @user = User.new(user_params)
  end

  def create
    Rails.logger.debug("aaaaa")
    @user = User.new(user_icon: params[:user_icon], name: params[:name], email: params[:email], password: params[:password])
    Rails.logger.debug("bbbbb")
    Rails.logger.debug(params[:user_icon])
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user), notice: "新規登録が完了しました。"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def show
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:user_icon, :name, :email, :password, :password_confirmation)
  end
  
end
