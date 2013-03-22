class UniversityProgramsController < ApplicationController
  # GET /university_programs
  # GET /university_programs.json
  def index
    @university_programs = UniversityProgram.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @university_programs }
    end
  end

  # GET /university_programs/1
  # GET /university_programs/1.json
  def show
    @university_program = UniversityProgram.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @university_program }
    end
  end

  # GET /university_programs/new
  # GET /university_programs/new.json
  def new
    @university_program = UniversityProgram.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @university_program }
    end
  end

  # GET /university_programs/1/edit
  def edit
    @university_program = UniversityProgram.find(params[:id])
  end

  # POST /university_programs
  # POST /university_programs.json
  def create
    @university_program = UniversityProgram.new(params[:university_program])

    respond_to do |format|
      if @university_program.save
        format.html { redirect_to @university_program, notice: 'University program was successfully created.' }
        format.json { render json: @university_program, status: :created, location: @university_program }
      else
        format.html { render action: "new" }
        format.json { render json: @university_program.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /university_programs/1
  # PUT /university_programs/1.json
  def update
    @university_program = UniversityProgram.find(params[:id])

    respond_to do |format|
      if @university_program.update_attributes(params[:university_program])
        format.html { redirect_to @university_program, notice: 'University program was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @university_program.errors, status: :unprocessable_entity }
      end
    end
  end

  def import
  UniversityProgram.import(params[:file])
  redirect_to university_programs_url, notice: "University Programs imported."
  end

  # DELETE /university_programs/1
  # DELETE /university_programs/1.json
  def destroy
    @university_program = UniversityProgram.find(params[:id])
    @university_program.destroy

    respond_to do |format|
      format.html { redirect_to university_programs_url }
      format.json { head :no_content }
    end
  end
end
