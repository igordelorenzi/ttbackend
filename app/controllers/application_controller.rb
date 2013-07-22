class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper
  # rescue_from User::NotAuthorized, with: :user_not_authorized
  # rescue_from SessionController::InvalidAuth, with: :invalid_authentication

  # # Error constants
  # NOT_AUTHORIZED = { 
  # 	status_code: 1, 
  # 	status_message: "You don't have access to this section."
  # }
  # INVALID_AUTH = { 
  # 	status_code: 2, 
  # 	status_message: "Invalid email/password combination."
  # }

  # private
  # 	def user_not_authorized
  # 		render json: NOT_AUTHORIZED, status: :unauthorized
  # 		flash[:error] = NOT_AUTHORIZED[:status_message]
  #   	redirect_to root_path
  # 	end

  # 	def invalid_authentication
  # 		render json: INVALID_AUTH
  # 		flash.now[:error] = INVALID_AUTH[:status_message]
  # 	end
end
