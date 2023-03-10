class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new
    @user["username"] = params["user"]["username"]
    @user["email"] = params["user"]["email"]
    @user["password"] = BCrypt::Password.create(params["user"]["password"])
    @user.save
    redirect_to "/sessions/new"
  end

  def show
    @user = User.find_by({ "id" => params["id"] })
  end
end

def destroy
  session["user_id"] = nil
  redirect_to "/sessions/new"
end
