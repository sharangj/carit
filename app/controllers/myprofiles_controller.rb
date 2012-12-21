class MyprofilesController < ApplicationController
before_filter :authenticate_user!

def index
@profile1s = Profile1.scoped_by_user_id(current_user.id)
end

def new
end
end
