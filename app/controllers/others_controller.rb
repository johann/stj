class OthersController < ApplicationController
  # GET /others
  # GET /others.json
  def index
    @others = Other.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @others }
    end
  end

  # GET /others/1
  # GET /others/1.json
  def show
    @other = Other.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @other }
    end
  end

  # GET /others/new
  # GET /others/new.json
  def new
    @other = Other.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @other }
    end
  end

  # GET /others/1/edit
  def edit
    @other = Other.find(params[:id])
  end

  # POST /others
  # POST /others.json
  def create
    @other = Other.new(params[:other])

    respond_to do |format|
      if @other.save
        format.html { redirect_to @other, notice: 'Other was successfully created.' }
        format.json { render json: @other, status: :created, location: @other }
      else
        format.html { render action: "new" }
        format.json { render json: @other.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /others/1
  # PUT /others/1.json
  def update
    @other = Other.find(params[:id])

    respond_to do |format|
      if @other.update_attributes(params[:other])
        format.html { redirect_to @other, notice: 'Other was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @other.errors, status: :unprocessable_entity }
      end
    end
  end

  def import
  Other.import(params[:file])
  redirect_to others_url, notice: "Others imported."
  end

  # DELETE /others/1
  # DELETE /others/1.json
  def destroy
    @other = Other.find(params[:id])
    @other.destroy

    respond_to do |format|
      format.html { redirect_to others_url }
      format.json { head :no_content }
    end
  end
end
