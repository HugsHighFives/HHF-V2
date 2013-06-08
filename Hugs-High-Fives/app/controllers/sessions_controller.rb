class SessionsController < ApplicationController

  def destroy
    session["user_id"] = nil
    redirect_to "/home", notice: "Thanks for shopping!"
  end
  def new
  end

  def create
    user = User.find_by_name(params["name"])

    if user && user.authenticate(params["password"])
      session["user_id"] = user.id
      redirect_to "/home", notice: "Welcome back, #{user.name}"
    else
      redirect_to "/login", notice: "Unknown username or password."
    end
  end
end
