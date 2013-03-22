class AcademicHonorSocietiesController < ApplicationController
  # GET /academic_honor_societies
  # GET /academic_honor_societies.json
  def index
    @academic_honor_societies = AcademicHonorSociety.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @academic_honor_societies }
    end
  end

  # GET /academic_honor_societies/1
  # GET /academic_honor_societies/1.json
  def show
    @academic_honor_society = AcademicHonorSociety.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @academic_honor_society }
    end
  end

  # GET /academic_honor_societies/new
  # GET /academic_honor_societies/new.json
  def new
    @academic_honor_society = AcademicHonorSociety.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @academic_honor_society }
    end
  end

  # GET /academic_honor_societies/1/edit
  def edit
    @academic_honor_society = AcademicHonorSociety.find(params[:id])
  end

  # POST /academic_honor_societies
  # POST /academic_honor_societies.json
  def create
    @academic_honor_society = AcademicHonorSociety.new(params[:academic_honor_society])

    respond_to do |format|
      if @academic_honor_society.save
        format.html { redirect_to @academic_honor_society, notice: 'Academic honor society was successfully created.' }
        format.json { render json: @academic_honor_society, status: :created, location: @academic_honor_society }
      else
        format.html { render action: "new" }
        format.json { render json: @academic_honor_society.errors, status: :unprocessable_entity }
      end
    end
  end

  def import
  AcademicHonorSociety.import(params[:file])
  redirect_to academic_honor_societies_url, notice: "Academic Honor Societies imported."
  end

  # PUT /academic_honor_societies/1
  # PUT /academic_honor_societies/1.json
  def update
    @academic_honor_society = AcademicHonorSociety.find(params[:id])

    respond_to do |format|
      if @academic_honor_society.update_attributes(params[:academic_honor_society])
        format.html { redirect_to @academic_honor_society, notice: 'Academic honor society was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @academic_honor_society.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /academic_honor_societies/1
  # DELETE /academic_honor_societies/1.json
  def destroy
    @academic_honor_society = AcademicHonorSociety.find(params[:id])
    @academic_honor_society.destroy

    respond_to do |format|
      format.html { redirect_to academic_honor_societies_url }
      format.json { head :no_content }
    end
  end
end
