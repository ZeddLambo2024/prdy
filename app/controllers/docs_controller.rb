class DocsController < ApplicationController
  before_action :set_doc, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :correct_user, only: [:edit, :update, :destroy]
  # GET /docs
  # GET /docs.json
  def index
    @docs = Doc.all
  end

  # GET /docs/1
  # GET /docs/1.json
  def show
  end

   def new
    @doc= current_user.docs.build
  end

  # GET /docs/1/edit
  def edit
  end

  # POST /docs
  # POST /docs.json
  def create
    @doc = current_user.docs.new(doc_params)
    respond_to do |format|
      if @doc.save
        format.html { redirect_to docs_url, notice: 'PRD was successfully created.' }
        
      else
        format.html { render :new }
        format.json { render json: @doc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /docs/1
  # PATCH/PUT /docs/1.json
  def update
    respond_to do |format|
      if @doc.update(doc_params)
        format.html { redirect_to docs_url, notice: 'PRD was successfully updated.' }
      else
        format.html { render :edit }
        format.json { render json: @doc.errors, status: :unprocessable_entity }
        redirect_to docs_url
      end
    end
  end

  # DELETE /docs/1
  # DELETE /docs/1.json
  def destroy
    @doc.delete
    redirect_to docs_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doc
      @doc = Doc.find(params[:id])
    end
def correct_user
      @doc = current_user.docs.find_by(id: params[:id])
      redirect_to docs_path, notice: "Not authorized to edit this PRD" if @doc.nil?
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def doc_params
      params.require(:doc).permit(:title, :targetReleaseVersion, :dateExpectedStartWork, :documentStatus, :documentOwner, :designerOwner, :developerOwner, :qaOwner, :goals, :backgroundStrategicFit, :assumptions, :requirements, :userInteractionNotes, :questions, :notDoing)
    end
end
