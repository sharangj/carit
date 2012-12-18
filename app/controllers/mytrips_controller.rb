class MytripsController < ApplicationController
before_filter :authenticate_user!

def index
@trips = Trip.scoped_by_user_id(current_user.id)
end

def show
@trip = Trip.find(params[:id])
end
end
