class ScholarshipGrantsController < ApplicationController
  # GET /scholarship_grants
  # GET /scholarship_grants.json
  def index
    @scholarship_grants = ScholarshipGrant.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @scholarship_grants }
    end
  end

  # GET /scholarship_grants/1
  # GET /scholarship_grants/1.json
  def show
    @scholarship_grant = ScholarshipGrant.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @scholarship_grant }
    end
  end

  # GET /scholarship_grants/new
  # GET /scholarship_grants/new.json
  def new
    @scholarship_grant = ScholarshipGrant.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @scholarship_grant }
    end
  end

  # GET /scholarship_grants/1/edit
  def edit
    @scholarship_grant = ScholarshipGrant.find(params[:id])
  end

  # POST /scholarship_grants
  # POST /scholarship_grants.json
  def create
    @scholarship_grant = ScholarshipGrant.new(params[:scholarship_grant])

    respond_to do |format|
      if @scholarship_grant.save
        format.html { redirect_to @scholarship_grant, notice: 'Scholarship grant was successfully created.' }
        format.json { render json: @scholarship_grant, status: :created, location: @scholarship_grant }
      else
        format.html { render action: "new" }
        format.json { render json: @scholarship_grant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /scholarship_grants/1
  # PUT /scholarship_grants/1.json
  def update
    @scholarship_grant = ScholarshipGrant.find(params[:id])

    respond_to do |format|
      if @scholarship_grant.update_attributes(params[:scholarship_grant])
        format.html { redirect_to @scholarship_grant, notice: 'Scholarship grant was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @scholarship_grant.errors, status: :unprocessable_entity }
      end
    end
  end

  def import
  ScholarshipGrant.import(params[:file])
  redirect_to scholarship_grants_url, notice: "Scholarships and Grants imported."
  end

  # DELETE /scholarship_grants/1
  # DELETE /scholarship_grants/1.json
  def destroy
    @scholarship_grant = ScholarshipGrant.find(params[:id])
    @scholarship_grant.destroy

    respond_to do |format|
      format.html { redirect_to scholarship_grants_url }
      format.json { head :no_content }
    end
  end
end
