class prdsController < ApplicationController
  before_action :set_prd, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:show]
  before_action :correct_user, only: [:edit, :update, :destroy]


  def index
    @prds = prd.all
  end

  def show
  end

  def new
    @prd = current_user.prds.build
  end

  def edit
  end

  def create
    @prd = current_user.prds.build(prd_params)
    if @prd.save
      redirect_to @prd, notice: 'Your new PRD was successfully created.'
    else
      render :new
    end
  end

  def update
    if @prd.update(prd_params)
      redirect_to @prd, notice: 'Your PRD has been successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @prd.destroy
    redirect_to prds_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prd
      @prd = prd.find_by(id: params[:id])
    end

    def correct_user
      @prd = current_user.prds.find_by(id: params[:id])
      redirect_to prds_path, notice: "Apologies, you're not authorized to edit this PRD" if @prd.nil?
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prd_params
      params.require(:prd).permit(:description, :image)
    end
end