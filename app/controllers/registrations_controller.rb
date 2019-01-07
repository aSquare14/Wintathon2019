class RegistrationsController < Devise::RegistrationsController

    

    def mentor
      @users = User.where(institute: current_user.institute).pluck(:id)
    end


    def mentee
      @users = User.where(institute: current_user.institute).pluck(:id)
    end

    private
  
    def sign_up_params
      params.require(:user).permit( :name, 
                                    :email,
                                    :institute,
                                    :graduation,
                                    :branch,
                                    :linkedin,
                                    :company, 
                                    :password, 
                                    :password_confirmation,
                                    :dp,
                                    expertise_ids:[])
    end
  
    def account_update_params
      params.require(:user).permit( :name, 
                                    :email,
                                    :company, 
                                    :password, 
                                    :password_confirmation, 
                                    :current_password)
    end
   
    def user_params
      params.require(:user).permit( :name, 
                                    :email,
                                    :institute,
                                    :graduation,
                                    :branch,
                                    :linkedin,
                                    :company, 
                                    :password, 
                                    :password_confirmation,
                                    :dp,
                                    expertise_ids:[])    
    end
end
  