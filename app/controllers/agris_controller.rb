class AgrisController < ApplicationController
  before_action :set_agri, only: %i[ show edit update destroy ]

  # GET /agris or /agris.json
  def index
    @agris = Agri.all
  end

  # GET /agris/1 or /agris/1.json
  def show
    @agris = Agri.all
  end

  # GET /agris/new
  def new
    @agri = Agri.new
  end

  # GET /agris/1/edit
  def edit
  end

  # POST /agris or /agris.json
  def create
    @agri = Agri.new(agri_params)

    respond_to do |format|
      if @agri.save
        format.html { redirect_to @agri, notice: "Agri was successfully created." }
        format.json { render :show, status: :created, location: @agri }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @agri.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /agris/1 or /agris/1.json
  def update
    respond_to do |format|
      if @agri.update(agri_params)
        format.html { redirect_to @agri, notice: "Agri was successfully updated." }
        format.json { render :show, status: :ok, location: @agri }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @agri.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /agris/1 or /agris/1.json
  def destroy
    @agri.destroy
    respond_to do |format|
      format.html { redirect_to agris_url, notice: "Agri was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agri
      @agri = Agri.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def agri_params
      params.require(:agri).permit(:user_id, :name, :date, :kg, :comment)
    end
end
