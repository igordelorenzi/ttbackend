class SessionsController < ApplicationController
  # GET (sign in - new session page)
  def new
  end

  # POST (create a new session)
  def create
    user = User.find_by_email(params[:session][:email])
    respond_to do |format|
      if user && user.authenticate(params[:session][:password])
        sign_in user # create a cookie
        format.json { render json: user.active_model_serializer.new(user, {}) }
        format.html { redirect_back_or user }
      else
        #raise SessionsController::InvalidAuth
        render 'new'
      end
    end
  end

  # DELETE (sign out - delete session)
  def destroy
    sign_out
    redirect_to root_path
  end

  ## Exception Handling
  #class InvalidAuth < StandardError
  #end
end
