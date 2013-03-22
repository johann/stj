class StudentOrganizationsController < ApplicationController
  # GET /student_organizations
  # GET /student_organizations.json
  def index
    #@student_organizations = StudentOrganization.all
    @student_organizations = StudentOrganization.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @student_organizations }
    end
  end

  # GET /student_organizations/1
  # GET /student_organizations/1.json
  def show
    @student_organization = StudentOrganization.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @student_organization }
    end
  end

  # GET /student_organizations/new
  # GET /student_organizations/new.json
  def new
    @student_organization = StudentOrganization.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @student_organization }
    end
  end

  # GET /student_organizations/1/edit
  def edit
    @student_organization = StudentOrganization.find(params[:id])
  end

  # POST /student_organizations
  # POST /student_organizations.json
  def create
    @student_organization = StudentOrganization.new(params[:student_organization])

    respond_to do |format|
      if @student_organization.save
        format.html { redirect_to @student_organization, notice: 'Student organization was successfully created.' }
        format.json { render json: @student_organization, status: :created, location: @student_organization }
      else
        format.html { render action: "new" }
        format.json { render json: @student_organization.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /student_organizations/1
  # PUT /student_organizations/1.json
  def update
    @student_organization = StudentOrganization.find(params[:id])

    respond_to do |format|
      if @student_organization.update_attributes(params[:student_organization])
        format.html { redirect_to @student_organization, notice: 'Student organization was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @student_organization.errors, status: :unprocessable_entity }
      end
    end
  end

  def import
  StudentOrganization.import(params[:file])
  #redirect_to root_url, notice: "Student Organizations imported."
  end

  # DELETE /student_organizations/1
  # DELETE /student_organizations/1.json
  def destroy
    @student_organization = StudentOrganization.find(params[:id])
    @student_organization.destroy

    respond_to do |format|
      format.html { redirect_to student_organizations_url }
      format.json { head :no_content }
    end
  end
end
