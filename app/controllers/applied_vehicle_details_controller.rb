class AppliedVehicleDetailsController < ApplicationController
  # GET /applied_vehicle_details
  # GET /applied_vehicle_details.json
  def index
    @applied_vehicle_details = AppliedVehicleDetail.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @applied_vehicle_details }
    end
  end

  # GET /applied_vehicle_details/1
  # GET /applied_vehicle_details/1.json
  def show
    @applied_vehicle_detail = AppliedVehicleDetail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @applied_vehicle_detail }
    end
  end

  # GET /applied_vehicle_details/new
  # GET /applied_vehicle_details/new.json
  def new
    @applied_vehicle_detail = AppliedVehicleDetail.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @applied_vehicle_detail }
    end
  end

  # GET /applied_vehicle_details/1/edit
  def edit
    @applied_vehicle_detail = AppliedVehicleDetail.find(params[:id])
  end

  # POST /applied_vehicle_details
  # POST /applied_vehicle_details.json
  def create
    @applied_vehicle_detail = AppliedVehicleDetail.new(params[:applied_vehicle_detail])

    respond_to do |format|
      if @applied_vehicle_detail.save
        format.html { redirect_to @applied_vehicle_detail, notice: 'Applied vehicle detail was successfully created.' }
        format.json { render json: @applied_vehicle_detail, status: :created, location: @applied_vehicle_detail }
      else
        format.html { render action: "new" }
        format.json { render json: @applied_vehicle_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /applied_vehicle_details/1
  # PUT /applied_vehicle_details/1.json
  def update
    @applied_vehicle_detail = AppliedVehicleDetail.find(params[:id])

    respond_to do |format|
      if @applied_vehicle_detail.update_attributes(params[:applied_vehicle_detail])
        format.html { redirect_to @applied_vehicle_detail, notice: 'Applied vehicle detail was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @applied_vehicle_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /applied_vehicle_details/1
  # DELETE /applied_vehicle_details/1.json
  def destroy
    @applied_vehicle_detail = AppliedVehicleDetail.find(params[:id])
    @applied_vehicle_detail.destroy

    respond_to do |format|
      format.html { redirect_to applied_vehicle_details_url }
      format.json { head :no_content }
    end
  end
end
