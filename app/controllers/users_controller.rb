class UsersController < ApplicationController

  def show
    # find a user in the db, using the user id from the session hash
    user = User.find(session[:user_id])
    # return the user as a JSON object
    render json: user
  end

end
