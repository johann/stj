class UpcomingsController < ApplicationController
  # GET /upcomings
  # GET /upcomings.json
  def index
    #@upcomings = Upcoming.all
    @upcomings = Upcoming.order("date")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @upcomings }
    end
  end

  # GET /upcomings/1
  # GET /upcomings/1.json
  def show
    @upcoming = Upcoming.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @upcoming }
    end
  end

  # GET /upcomings/new
  # GET /upcomings/new.json
  def new
    @upcoming = Upcoming.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @upcoming }
    end
  end

  # GET /upcomings/1/edit
  def edit
    @upcoming = Upcoming.find(params[:id])
  end

  # POST /upcomings
  # POST /upcomings.json
  def create
    @upcoming = Upcoming.new(params[:upcoming])

    respond_to do |format|
      if @upcoming.save
        format.html { redirect_to @upcoming, notice: 'Upcoming was successfully created.' }
        format.json { render json: @upcoming, status: :created, location: @upcoming }
      else
        format.html { render action: "new" }
        format.json { render json: @upcoming.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /upcomings/1
  # PUT /upcomings/1.json
  def update
    @upcoming = Upcoming.find(params[:id])

    respond_to do |format|
      if @upcoming.update_attributes(params[:upcoming])
        format.html { redirect_to @upcoming, notice: 'Upcoming was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @upcoming.errors, status: :unprocessable_entity }
      end
    end
  end

  def import
    Upcoming.import(params[:file])
    redirect_to root_url, notice: "University Programs imported."
  end

  # DELETE /upcomings/1
  # DELETE /upcomings/1.json
  def destroy
    @upcoming = Upcoming.find(params[:id])
    @upcoming.destroy

    respond_to do |format|
      format.html { redirect_to upcomings_url }
      format.json { head :no_content }
    end
  end
end
