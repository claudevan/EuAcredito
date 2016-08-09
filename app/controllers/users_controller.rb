class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update, :show]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user
    else
      flash[:error] = "Todos os campos são obrigatórios"
      render :new
    end
  end

  def show
  end

  def edit
    @user.invites.build
  end

  def update
    if @user.update(user_params)
      UserInviteMailer.invite_friends(@user).deliver_now
      redirect_to @user
    else
      flash[:error] = "Todos os campos são obrigatórios"
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :phone, :company, :position,
      invites_attributes: [:name, :email])
  end

  def set_user
    @user = User.find(params[:id])
  end
end
