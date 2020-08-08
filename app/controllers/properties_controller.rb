class PropertiesController < ApplicationController
  before_action :set_property, only: %i[ show edit update destroy ]

  # GET /properties
  # GET /properties.json
  def index
    @properties = Property.all
  end

  # GET /properties/1
  # GET /properties/1.json
  def show
  end

  # GET /properties/new
  def new
    @property = Property.new
    2.times { @property.stations.build }
    @n = 0
  end

  # GET /properties/1/edit
  def edit
    @property.stations.build
    @n = 0
  end

  # POST /properties
  # POST /properties.json
  def create
    @property = Property.new(property_params)
    if @property.save
      redirect_to @property, notice: 'Property was successfully created.' 
    else
      render :new 
    end
  end

  # PATCH/PUT /properties/1
  # PATCH/PUT /properties/1.json
  def update
    if @property.update(property_params)
      redirect_to @property, notice: 'Property was successfully updated.' 
    else
      render :edit 
    end
  end

  # DELETE /properties/1
  # DELETE /properties/1.json
  def destroy
    @property.destroy
      redirect_to properties_url, notice: 'Property was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
  def set_property
    @property = Property.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def property_params
    params.require(:property).permit(
      :name, :price, :address, :constraction, :remark,
      stations_attributes:[:id, :name, :route_name, :walking, :_destroy ])
  end

end
