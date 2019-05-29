class UsersController < ApplicationController

  # GET /users || /users.json
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  # GET /users/1 || /users/1.json
  def show
  end

  # GET /users/1/edit
  def edit
  end

  # PATCH/PUT /users/1 || users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def user_params
      params.require(:user).permit(
        :first_name, :last_name, :country_id, 
        :city_id, :email, {:field_of_interest => []}, {:field_of_knowledge => []}, 
        :password, :password_confirmation, :remember_me)
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end


end