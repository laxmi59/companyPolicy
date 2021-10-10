class Admin::UsersController < ApplicationController
  def index
    @users = User.all.includes(:role)
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    #puts @role
    if @user.save
      redirect_to admin_users_path, notice: 'Successfully Created User'
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    #puts @role
    if @user.update(user_params)
      redirect_to admin_users_path, notice: 'Successfully Updated User'
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    #puts @role
    @user.destroy

    redirect_to admin_roles_path
  end

  def user_params
    # strong parameters
    params.require(:user).permit(:name)
  end
end
