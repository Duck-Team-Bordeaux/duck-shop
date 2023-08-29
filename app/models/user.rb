class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :address, :mobile_number])

  devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :address, :mobile_number])
end
