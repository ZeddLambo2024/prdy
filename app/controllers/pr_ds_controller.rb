class PrDsController < ApplicationController
  before_action :set_prd, only: [:show, :edit, :update, :destroy]

  # GET /prds
  # GET /prds.json
  def index
    @prds = Prd.all
  end

  # GET /prds/1
  # GET /prds/1.json
  def show
  end

  # GET /prds/new
  def new
    @prd = Prd.new
  end

  # GET /prds/1/edit
  def edit
  end

  # POST /prds
  # POST /prds.json
  def create
    @prd = Prd.new(prd_params)

    respond_to do |format|
      if @prd.save
        format.html { redirect_to @prd, notice: 'Prd was successfully created.' }
        format.json { render :show, status: :created, location: @prd }
      else
        format.html { render :new }
        format.json { render json: @prd.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prds/1
  # PATCH/PUT /prds/1.json
  def update
    respond_to do |format|
      if @prd.update(prd_params)
        format.html { redirect_to @prd, notice: 'Prd was successfully updated.' }
        format.json { render :show, status: :ok, location: @prd }
      else
        format.html { render :edit }
        format.json { render json: @prd.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prds/1
  # DELETE /prds/1.json
  def destroy
    @prd.destroy
    respond_to do |format|
      format.html { redirect_to prds_url, notice: 'Prd was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prd
      @prd = Prd.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prd_params
      params.require(:prd).permit(:title, :targetReleaseVersion, :dateExpectedStartWork, :documentStatus, :documentOwner, :designerOwner, :developerOwner, :qaOwner, :goals, :backgroundStrategicFit, :assumptions, :requirements, :userInteractionNotes, :questions, :notDoing)
    end
end
