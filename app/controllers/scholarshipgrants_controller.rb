class ScholarshipgrantsController < ApplicationController
  # GET /scholarshipgrants
  # GET /scholarshipgrants.json
  def index
    @scholarshipgrants = Scholarshipgrant.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @scholarshipgrants }
    end
  end

  # GET /scholarshipgrants/1
  # GET /scholarshipgrants/1.json
  def show
    @scholarshipgrant = Scholarshipgrant.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @scholarshipgrant }
    end
  end

  # GET /scholarshipgrants/new
  # GET /scholarshipgrants/new.json
  def new
    @scholarshipgrant = Scholarshipgrant.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @scholarshipgrant }
    end
  end

  # GET /scholarshipgrants/1/edit
  def edit
    @scholarshipgrant = Scholarshipgrant.find(params[:id])
  end

  # POST /scholarshipgrants
  # POST /scholarshipgrants.json
  def create
    @scholarshipgrant = Scholarshipgrant.new(params[:scholarshipgrant])

    respond_to do |format|
      if @scholarshipgrant.save
        format.html { redirect_to @scholarshipgrant, notice: 'Scholarshipgrant was successfully created.' }
        format.json { render json: @scholarshipgrant, status: :created, location: @scholarshipgrant }
      else
        format.html { render action: "new" }
        format.json { render json: @scholarshipgrant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /scholarshipgrants/1
  # PUT /scholarshipgrants/1.json
  def update
    @scholarshipgrant = Scholarshipgrant.find(params[:id])

    respond_to do |format|
      if @scholarshipgrant.update_attributes(params[:scholarshipgrant])
        format.html { redirect_to @scholarshipgrant, notice: 'Scholarshipgrant was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @scholarshipgrant.errors, status: :unprocessable_entity }
      end
    end
  end

  def import
  Scholarshipgrant.import(params[:file])
  redirect_to scholarshipgrants_url, notice: "Scholarships and Grants imported."
  end

  # DELETE /scholarshipgrants/1
  # DELETE /scholarshipgrants/1.json
  def destroy
    @scholarshipgrant = Scholarshipgrant.find(params[:id])
    @scholarshipgrant.destroy

    respond_to do |format|
      format.html { redirect_to scholarshipgrants_url }
      format.json { head :no_content }
    end
  end
end
