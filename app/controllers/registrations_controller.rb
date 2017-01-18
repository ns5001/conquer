class RegistrationsController < Devise::RegistrationsController
  private

  def sign_up_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :age, :weight, :height, :bio, :gender)
  end

  def account_update_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :age, :weight, :height, :bio, :gender)
  end
end


# Guest account can only leave reviews. Take out email
# 
