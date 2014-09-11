class MainController < ApplicationController
  def index
    @user = Venmo.authenticate params[:code]
    @info = @user.get_info
    @friends = @user.get_friends
  end
end
