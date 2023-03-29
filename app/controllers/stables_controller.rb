class StablesController < ApplicationController

def index
@stables = Stable.all

end

end