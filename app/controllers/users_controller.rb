class UsersController < ApplicationController

  def show
    @user = User.find_by(id: params[:id])
    counts(@user)
  end

end
