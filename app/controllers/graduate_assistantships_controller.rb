class GraduateAssistantshipsController < ApplicationController
  # GET /graduate_assistantships
  # GET /graduate_assistantships.json
  def index
    @graduate_assistantships = GraduateAssistantship.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @graduate_assistantships }
    end
  end

  # GET /graduate_assistantships/1
  # GET /graduate_assistantships/1.json
  def show
    @graduate_assistantship = GraduateAssistantship.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @graduate_assistantship }
    end
  end

  # GET /graduate_assistantships/new
  # GET /graduate_assistantships/new.json
  def new
    @graduate_assistantship = GraduateAssistantship.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @graduate_assistantship }
    end
  end

  # GET /graduate_assistantships/1/edit
  def edit
    @graduate_assistantship = GraduateAssistantship.find(params[:id])
  end

  # POST /graduate_assistantships
  # POST /graduate_assistantships.json
  def create
    @graduate_assistantship = GraduateAssistantship.new(params[:graduate_assistantship])

    respond_to do |format|
      if @graduate_assistantship.save
        format.html { redirect_to @graduate_assistantship, notice: 'Graduate assistantship was successfully created.' }
        format.json { render json: @graduate_assistantship, status: :created, location: @graduate_assistantship }
      else
        format.html { render action: "new" }
        format.json { render json: @graduate_assistantship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /graduate_assistantships/1
  # PUT /graduate_assistantships/1.json
  def update
    @graduate_assistantship = GraduateAssistantship.find(params[:id])

    respond_to do |format|
      if @graduate_assistantship.update_attributes(params[:graduate_assistantship])
        format.html { redirect_to @graduate_assistantship, notice: 'Graduate assistantship was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @graduate_assistantship.errors, status: :unprocessable_entity }
      end
    end
  end

  def import
  GraduateAssistantship.import(params[:file])
  redirect_to graduate_assistantships_url, notice: "Graduate Assistantships imported."
  end

  # DELETE /graduate_assistantships/1
  # DELETE /graduate_assistantships/1.json
  def destroy
    @graduate_assistantship = GraduateAssistantship.find(params[:id])
    @graduate_assistantship.destroy

    respond_to do |format|
      format.html { redirect_to graduate_assistantships_url }
      format.json { head :no_content }
    end
  end
end
