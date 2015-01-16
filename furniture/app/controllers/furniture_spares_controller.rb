class FurnitureSparesController < ApplicationController
  before_action :set_furniture_spare, only: [:show, :edit, :update, :destroy]

  # GET /furniture_spares
  # GET /furniture_spares.json
  def index
   @furniture_spares = FurnitureSpare.all
  #  @furniture_spares = FurnitureSpare.new
  #  if params[:SparePartName]
   #   @furniture_spare.SparePartName = params[:SparePartName]
  #  end
  end

  def view_database
    @furniture_spares = FurnitureSpare.all
  end

  # GET /furniture_spares/1
  # GET /furniture_spares/1.json
  def show
    @furniture_spare = FurnitureSpare.find(params[:id])
=begin
    @furniture_spare = FurnitureSpare.find(params[:SparePartName])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @furniture_spare }
    end
   #@furniture_spare = FurnitureSpare.new
    # if params[:SparePartName]
    # @furniture_spare.SparePartName = params[:SparePartName]
    #end
=end
  end

  # GET /furniture_spares/new
  def new
    @furniture_spare = FurnitureSpare.new
  end

  # GET /furniture_spares/1/edit
  def edit
  #  @furniture_spares=FurnitureSpare.find(params[:id])
     end

  # POST /furniture_spares
  # POST /furniture_spares.json
  def create
    params[:furniture_spare][:Description] ||=[]
    # params[:train][:train_classes] ||=[]
    s=params[:Description1].to_s+"\n"+params[:Description2].to_s+"\n"+params[:Description3].to_s+"\n"+params[:Description4].to_s+"\n"+params[:Description5].to_s
    params[:furniture_spare][:Description]=s
    @furniture_spare = FurnitureSpare.new(furniture_spare_params)

    respond_to do |format|
      if @furniture_spare.save
        format.html { redirect_to @furniture_spare, notice: 'Furniture spare was successfully created.' }
        format.json { render :show, status: :created, location: @furniture_spare }
      else
        format.html { render :new }
        format.json { render json: @furniture_spare.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /furniture_spares/1
  # PATCH/PUT /furniture_spares/1.json
  def update
    params[:furniture_spare][:Description] ||=[]
   # params[:train][:train_classes] ||=[]
    s=params[:Description1].to_s+"\n"+params[:Description2].to_s+"\n"+params[:Description3].to_s+"\n"+params[:Description4].to_s+"\n"+params[:Description5].to_s
    params[:furniture_spare][:Description]=s
    #f=params[:class1].to_s+"\n"+params[:class2].to_s+"\n"+params[:class3].to_s+"\n"+params[:class4].to_s+"\n"+params[:class5].to_s+"\n"+params[:class6].to_s+"\n"+params[:class7].to_s+"\n"+params[:class8].to_s
   # params[:train][:train_classes]=f
    respond_to do |format|
      if @furniture_spare.update(furniture_spare_params)
        format.html { redirect_to view_database_url, notice: 'Furniture spare was successfully updated.' }
        format.json { render :show, status: :ok, location: @furniture_spare }
      else
        format.html { render :edit }
        format.json { render json: @furniture_spare.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /furniture_spares/1
  # DELETE /furniture_spares/1.json
  def destroy
    @furniture_spare.destroy
    respond_to do |format|
      format.html { redirect_to furniture_spares_path, notice: 'Furniture spare was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_furniture_spare
      @furniture_spare = FurnitureSpare.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def furniture_spare_params
      params.require(:furniture_spare).permit(:SparePartID, :SparePartName, :Material, :Color, :Manufacturer, :QuantityAvailable, :Price, :Description)
    end
end
