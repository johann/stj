class UniversityHonorSocietiesController < ApplicationController
  # GET /university_honor_societies
  # GET /university_honor_societies.json
  def index
    @university_honor_societies = UniversityHonorSociety.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @university_honor_societies }
    end
  end

  # GET /university_honor_societies/1
  # GET /university_honor_societies/1.json
  def show
    @university_honor_society = UniversityHonorSociety.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @university_honor_society }
    end
  end

  # GET /university_honor_societies/new
  # GET /university_honor_societies/new.json
  def new
    @university_honor_society = UniversityHonorSociety.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @university_honor_society }
    end
  end

  # GET /university_honor_societies/1/edit
  def edit
    @university_honor_society = UniversityHonorSociety.find(params[:id])
  end

  # POST /university_honor_societies
  # POST /university_honor_societies.json
  def create
    @university_honor_society = UniversityHonorSociety.new(params[:university_honor_society])

    respond_to do |format|
      if @university_honor_society.save
        format.html { redirect_to @university_honor_society, notice: 'University honor society was successfully created.' }
        format.json { render json: @university_honor_society, status: :created, location: @university_honor_society }
      else
        format.html { render action: "new" }
        format.json { render json: @university_honor_society.errors, status: :unprocessable_entity }
      end
    end
  end


  def import
  UniversityHonorSociety.import(params[:file])
  redirect_to university_honor_societies_url, notice: "University Honor Societies imported."
  end

  # PUT /university_honor_societies/1
  # PUT /university_honor_societies/1.json
  def update
    @university_honor_society = UniversityHonorSociety.find(params[:id])

    respond_to do |format|
      if @university_honor_society.update_attributes(params[:university_honor_society])
        format.html { redirect_to @university_honor_society, notice: 'University honor society was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @university_honor_society.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /university_honor_societies/1
  # DELETE /university_honor_societies/1.json
  def destroy
    @university_honor_society = UniversityHonorSociety.find(params[:id])
    @university_honor_society.destroy

    respond_to do |format|
      format.html { redirect_to university_honor_societies_url }
      format.json { head :no_content }
    end
  end
end
