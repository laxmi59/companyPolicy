class UsersController < ApplicationController
  def index
  end

  def show
    @user = User.find(Current.user.id)
  end

  def edit
    @user = User.find(Current.user.id)
  end

  def update
    @user = User.find(params[:id])
    #puts @user.inspect
    if @user.update!(user_params)
      redirect_to my_account_path, notice: 'Successfully Updated your details'
    else
      render :edit
    end
  end

  def user_params
    # strong parameters
    params.require(:user).permit(:fname, :lname, :dob, :gender, :marital_status, :blood_group, :mobile, :address)
  end
end
