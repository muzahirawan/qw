class HomeController < ApplicationController
   before_action :authenticate_user!
  def index
  @appointents = current_user.appointents
  end
end
