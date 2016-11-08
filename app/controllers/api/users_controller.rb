


class Api::UsersController < ApplicationController

  # signup a new user
  def create
    @user = User.new(user_params)

    if @user.save
      login(@user)
      Bookshelf.create({user_id: current_user.id, title: "To-Read"})
      Bookshelf.create({user_id: current_user.id, title: "Read"})
      Bookshelf.create({user_id: current_user.id, title: "Current-Reading"})
      render "api/users/show"
    else
      render json: @user.errors.full_messages, status: 422
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :email)
  end

end
