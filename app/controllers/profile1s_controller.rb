class Profile1sController < ApplicationController
  # GET /profile1s
  # GET /profile1s.json
  def index
    @profile1s = Profile1.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @profile1s }
    end
  end

  # GET /profile1s/1
  # GET /profile1s/1.json
  def show
    @profile1 = Profile1.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @profile1 }
    end
  end

  # GET /profile1s/new
  # GET /profile1s/new.json
  def new
    @profile1 = current_user.profile1.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @profile1 }
    end
  end

  # GET /profile1s/1/edit
  def edit
    @profile1 = Profile1.find(params[:id])
  end

  # POST /profile1s
  # POST /profile1s.json
  def create
    @profile1 = current_user.profile1.build(params[:profile1])

    respond_to do |format|
      if @profile1.save
        format.html { redirect_to @profile1, notice: 'Profile1 was successfully created.' }
        format.json { render json: @profile1, status: :created, location: @profile1 }
      else
        format.html { render action: "new" }
        format.json { render json: @profile1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /profile1s/1
  # PUT /profile1s/1.json
  def update
    @profile1 = Profile1.find(params[:id])

    respond_to do |format|
      if @profile1.update_attributes(params[:profile1])
        format.html { redirect_to @profile1, notice: 'Profile1 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @profile1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profile1s/1
  # DELETE /profile1s/1.json
  def destroy
    @profile1 = Profile1.find(params[:id])
    @profile1.destroy

    respond_to do |format|
      format.html { redirect_to profile1s_url }
      format.json { head :no_content }
    end
  end
end
