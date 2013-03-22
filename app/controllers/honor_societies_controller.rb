class HonorSocietiesController < ApplicationController
  # GET /honor_societies
  # GET /honor_societies.json
  def index
    if params[:tag]
      @honor_societies = HonorSociety.tagged_with(params[:tag])
    else
      @honor_societies = HonorSociety.all


   end
   

    respond_to do |format|
    format.html # index.html.erb
    format.json { render json: @honor_societies }
    end
  end

  # GET /honor_societies/1
  # GET /honor_societies/1.json
  def show
    @honor_society = HonorSociety.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @honor_society }
    end
  end

  # GET /honor_societies/new
  # GET /honor_societies/new.json
  def new
    @honor_society = HonorSociety.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @honor_society }
    end
  end

  # GET /honor_societies/1/edit
  def edit
    @honor_society = HonorSociety.find(params[:id])
  end

  # POST /honor_societies
  # POST /honor_societies.json
  def create
    @honor_society = HonorSociety.new(params[:honor_society])

    respond_to do |format|
      if @honor_society.save
        format.html { redirect_to @honor_society, notice: 'Honor society was successfully created.' }
        format.json { render json: @honor_society, status: :created, location: @honor_society }
      else
        format.html { render action: "new" }
        format.json { render json: @honor_society.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /honor_societies/1
  # PUT /honor_societies/1.json
  def update
    @honor_society = HonorSociety.find(params[:id])

    respond_to do |format|
      if @honor_society.update_attributes(params[:honor_society])
        format.html { redirect_to @honor_society, notice: 'Honor society was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @honor_society.errors, status: :unprocessable_entity }
      end
    end
  end

def import
  HonorSociety.import(params[:file])
  redirect_to honor_societies_url, notice: "Honor Societies imported."
end
  # DELETE /honor_societies/1
  # DELETE /honor_societies/1.json
  def destroy
    @honor_society = HonorSociety.find(params[:id])
    @honor_society.destroy

    respond_to do |format|
      format.html { redirect_to honor_societies_url }
      format.json { head :no_content }
    end
  end
end
