class UsersController < ApplicationController
before_filter :authenticate_user!
def welcome

end
def index
@users=User.where("email like ?", "%#{params[:q]}%")
    respond_to do |format|
      format.html
      format.json { render :json => @users.collect{|t| {:id => t.id, :name => t.email }}}
    end
end

end
