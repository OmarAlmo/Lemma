class Users::RegistrationsController < Devise::RegistrationsController

    prepend_before_action do
        byebug
    end


    def create
    end

    private 

        def sign_up_params
            params.require(:user).permit(:first_name, :last_name, :email, :country, :city, :password, :password_confirmation) 
        end

        def account_update_params
            params.require(:user).permit(:first_name, :last_name, :email, :country, :city, :password, :password_confirmation, :current_password)
        end 

    end 

end 