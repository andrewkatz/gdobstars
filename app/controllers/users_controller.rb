class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  # GET /users.json
  def index
    @users = User.all
  end

  # GET /items/1.json
  def show
  end

  # PATCH/PUT /items/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.json { head :no_content }
      else
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:stars, :ticks)
  end
end
