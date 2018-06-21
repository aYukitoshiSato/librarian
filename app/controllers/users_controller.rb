class UsersController < ApplicationController
  def show
    @user = User.find_by(id: params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(
      name: params[:name],
      email: params[:email],
      birthday: params[:date],
      password: params[:password]
    )
    if @user.save
      flash[:notice] = "ユーザー登録が完了しました"
      redirect_to("/users/#{@user.id}")
      ession[:user_id] = @user_id
    else
      render('users/new')
    end
  end

  def signin_form
    @user = User.new
  end

  def signin
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user_id
      flash[:notice] = "ログインしました"
      redirect_to("/users/#{@user.id}")
    else
      @error_message = "メールアドレスまたはパスワードが間違っています"
      @email = params[:email]
      render("users/signin_form")
    end
  end

end
