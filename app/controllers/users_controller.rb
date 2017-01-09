class UsersController < ApplicationController

  before_action :confirm_logged_in

  before_action :is_admin

  def index
    @users = User.sorted.active
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
    @user = User.find(params[:id])
    
  end

  def update
    @user = User.find(params[:id])

    if @user.update_attributes(user_params)
      flash[:notice] = 'User updated'
      redirect_to(users_path)
    else
      flash.now[:notice] = "Error updating user"
      render('edit')
    end

  end

  def delete
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    @user.deleted = true

    if @user.save
      flash[:notice] = "Admin User Destroyed!"
      redirect_to(users_path)
    else
      flash[:notice] = "Failed to destroy the user"
      render('delete')
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :username, :password)
  end

end
