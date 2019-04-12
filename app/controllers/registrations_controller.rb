class RegistrationsController < Devise::RegistrationsController

    private 

    def sign_up_params
       params.require(:user).permit(:first_name, :last_name, :email, :country, :state, :city,:password, :password_confirmation) 
    end

    def account_update_params
        params.require(:user).permit(:name, :email, :country, :state, :city, :password, :password_confirmation, :current_password)
    end 

    def 

end 
