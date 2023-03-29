class AppointentsController < ApplicationController

def create
appointent = current_user.appointents.build(appointent_params)
appointent.user = current_user
flash[:alert]= 'sucucucucu'
appointent.save 

redirect_to root_path
end
private
def appointent_params
params.require(:appointent).permit(:user_id, :coach_id, :appointent_date)

end
end
