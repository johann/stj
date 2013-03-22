class GreekOrganizationsController < ApplicationController
  # GET /greek_organizations
  # GET /greek_organizations.json
  def index
    @greek_organizations = GreekOrganization.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @greek_organizations }
    end
  end

  # GET /greek_organizations/1
  # GET /greek_organizations/1.json
  def show
    @greek_organization = GreekOrganization.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @greek_organization }
    end
  end

  # GET /greek_organizations/new
  # GET /greek_organizations/new.json
  def new
    @greek_organization = GreekOrganization.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @greek_organization }
    end
  end

  # GET /greek_organizations/1/edit
  def edit
    @greek_organization = GreekOrganization.find(params[:id])
  end

  # POST /greek_organizations
  # POST /greek_organizations.json
  def create
    @greek_organization = GreekOrganization.new(params[:greek_organization])

    respond_to do |format|
      if @greek_organization.save
        format.html { redirect_to @greek_organization, notice: 'Greek organization was successfully created.' }
        format.json { render json: @greek_organization, status: :created, location: @greek_organization }
      else
        format.html { render action: "new" }
        format.json { render json: @greek_organization.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /greek_organizations/1
  # PUT /greek_organizations/1.json
  def update
    @greek_organization = GreekOrganization.find(params[:id])

    respond_to do |format|
      if @greek_organization.update_attributes(params[:greek_organization])
        format.html { redirect_to @greek_organization, notice: 'Greek organization was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @greek_organization.errors, status: :unprocessable_entity }
      end
    end
  end

  def import
  GreekOrganization.import(params[:file])
  redirect_to greek_organizations_url, notice: "Greek Organizations imported."
  end

  # DELETE /greek_organizations/1
  # DELETE /greek_organizations/1.json
  def destroy
    @greek_organization = GreekOrganization.find(params[:id])
    @greek_organization.destroy

    respond_to do |format|
      format.html { redirect_to greek_organizations_url }
      format.json { head :no_content }
    end
  end
end
