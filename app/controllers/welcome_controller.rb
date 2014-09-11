class WelcomeController < ApplicationController
  def index
    @auth_link = Venmo.auth_link
  end
end
