class MainController < ApplicationController
  def index
    @user = Venmo.authenticate params[:code]
    @info = @user.get_info
    @friends = @user.get_friends
    @other_user = @user.get_user 145434160922624933
    @payment = @user.make_payment ({ :note => 'A message to accompany the payment.', :amount => '0.10', :user_id => 145434160922624933 })
    puts @payment.inspect
  end
end
