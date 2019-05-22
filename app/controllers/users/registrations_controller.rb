class Users::RegistrationsController < Devise::RegistrationsController

    def create
    end


    private 
        def sign_up_params
            params.require(:user).permit(:first_name, :last_name, :email, :country_id, :city_id, :category_id, :category_id, :password, :password_confirmation) 
        end

        def account_update_params
            params.require(:user).permit(:first_name, :last_name, :email, :country_id, :city_id, :category_id, :category_id, :password, :password_confirmation, :current_password)
        end 

end 
