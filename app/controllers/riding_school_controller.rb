class RidingSchoolController < ApplicationController

  before_action :authenticate_user!
  def index
    @coaches = Coach.all
   @appointent = Appointent.new 

  end
end