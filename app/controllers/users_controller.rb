class UsersController < ApplicationController
before_filter :authenticate_user!
def welcome

end
def index
@users=User.all
end

end
