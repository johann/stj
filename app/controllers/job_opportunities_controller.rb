class JobOpportunitiesController < ApplicationController
  # GET /job_opportunities
  # GET /job_opportunities.json
  def index
    @job_opportunities = JobOpportunity.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @job_opportunities }
    end
  end

  # GET /job_opportunities/1
  # GET /job_opportunities/1.json
  def show
    @job_opportunity = JobOpportunity.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @job_opportunity }
    end
  end

  # GET /job_opportunities/new
  # GET /job_opportunities/new.json
  def new
    @job_opportunity = JobOpportunity.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @job_opportunity }
    end
  end

  # GET /job_opportunities/1/edit
  def edit
    @job_opportunity = JobOpportunity.find(params[:id])
  end

  # POST /job_opportunities
  # POST /job_opportunities.json
  def create
    @job_opportunity = JobOpportunity.new(params[:job_opportunity])

    respond_to do |format|
      if @job_opportunity.save
        format.html { redirect_to @job_opportunity, notice: 'Job opportunity was successfully created.' }
        format.json { render json: @job_opportunity, status: :created, location: @job_opportunity }
      else
        format.html { render action: "new" }
        format.json { render json: @job_opportunity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /job_opportunities/1
  # PUT /job_opportunities/1.json
  def update
    @job_opportunity = JobOpportunity.find(params[:id])

    respond_to do |format|
      if @job_opportunity.update_attributes(params[:job_opportunity])
        format.html { redirect_to @job_opportunity, notice: 'Job opportunity was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @job_opportunity.errors, status: :unprocessable_entity }
      end
    end
  end

  def import
  JobOpportunity.import(params[:file])
  redirect_to job_opportunities_url, notice: "Job Opportunities imported."
  end

  # DELETE /job_opportunities/1
  # DELETE /job_opportunities/1.json
  def destroy
    @job_opportunity = JobOpportunity.find(params[:id])
    @job_opportunity.destroy

    respond_to do |format|
      format.html { redirect_to job_opportunities_url }
      format.json { head :no_content }
    end
  end
end
