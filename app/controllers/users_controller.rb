class UsersController < ApplicationController
  def index
    @users = User.all
  end
  def show
    @user = User.find(params[:id])
    @followed = @user.followed_users
    @followers = @user.followers
  end

  private
  def blogs_params
    params.require(:user).permit(:id,:name,:profile_img)
  end

end
