class UsersController < ApplicationController

  def index
    @users = User.sorted
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.save
      flash[:notice] = "congratulations, its a new user!"
      redirect_to(users_path)
    else
      render('new')
    end

  end


  def edit
  end

  def update
  end

  def delete
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :username, :password)
  end

end
