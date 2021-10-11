class Admin::RolesController < ApplicationController
  def index
    @roles = Role.all
  end

  def new
    @role = Role.new
  end

  def create
    @role = Role.new(role_params)
    if @role.save
      redirect_to admin_roles_path, notice: 'Successfully created Role'
    else
      render :new
    end
  end

  def show
    @role = Role.find(params[:id])
  end

  def edit
    @role = Role.find(params[:id])
  end

  def update
    @role = Role.find(params[:id])
    if @role.update(role_params)
      redirect_to admin_roles_path, notice: 'Successfully Updated Role'
    else
      render :edit
    end
  end
  def destroy

    @role = Role.find(params[:id])
    #puts @role
    @role.destroy

    redirect_to admin_roles_path
  end

  def role_params
    # strong parameters
    params.require(:role).permit(:name)
  end
end
