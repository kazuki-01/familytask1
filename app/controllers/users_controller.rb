class UsersController < ApplicationController


  def new
    @user = User.new
  end

  def check
    @user = User.new(image: params[:image], name: params[:name], email: params[:email], password: params[:password])
  end

  def create
    @user = User.new(image: params[:image], name: params[:name], email: params[:email], password: params[:password])
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path, notice: "新規登録が完了しました。"
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
    params.require(:user).permit(:image,:name, :email, :password)
  end
  
end
