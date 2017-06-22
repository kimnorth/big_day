class UsersController < ApplicationController
	
	before_action :set_user, only: [:show, :edit, :update, :destroy]
	
	def index
		users = User.all
		render json: users
	end

	def show
		render json: @user
	end

	def create
		@user = User.create(user_params)
	    render json: @user
	end

	private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:firstname, :lastname, :username, :password, :email)
    end
end
