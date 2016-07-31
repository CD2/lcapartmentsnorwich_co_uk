class Admin::UsersController < AdminController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :check_cancelled

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.valid?
      @user.save!
      redirect_to admin_users_path
    else
      render :new
    end
  end

  def update
    @user.assign_attributes(user_params)
    if @user.save!
      flash[:success] = "User Updated"
      redirect_to admin_users_path
    else
      render :edit
    end
  end

  def destroy
    if @user == current_user
      flash[:error] = "Cannot Destroy Yourself."
    else
      @user.destroy!
      flash[:success] = "User Destroyed"
    end
    redirect_to admin_users_path
  end

  private

    def set_user
      @user = User.find params[:id]
    end

    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation)
    end

    def check_cancelled
      if params[:commit] == 'Cancel'
        redirect_to admin_pages_path
      end
    end

end