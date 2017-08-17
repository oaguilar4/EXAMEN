class EstrellasController < ApplicationController
  before_action :set_estrella, only: [:show, :edit, :update, :destroy]

  # GET /estrellas
  # GET /estrellas.json
  def index
    @estrellas = Estrella.all
  end

  # GET /estrellas/1
  # GET /estrellas/1.json
  def show
  end

  # GET /estrellas/new
  def new
    @estrella = Estrella.new
  end

  # GET /estrellas/1/edit
  def edit
  end

  # POST /estrellas
  # POST /estrellas.json
  def create
    @estrella = Estrella.new(estrella_params)

    respond_to do |format|
      if @estrella.save
        format.html { redirect_to @estrella, notice: 'Estrella was successfully created.' }
        format.json { render :show, status: :created, location: @estrella }
      else
        format.html { render :new }
        format.json { render json: @estrella.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estrellas/1
  # PATCH/PUT /estrellas/1.json
  def update
    respond_to do |format|
      if @estrella.update(estrella_params)
        format.html { redirect_to @estrella, notice: 'Estrella was successfully updated.' }
        format.json { render :show, status: :ok, location: @estrella }
      else
        format.html { render :edit }
        format.json { render json: @estrella.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estrellas/1
  # DELETE /estrellas/1.json
  def destroy
    @estrella.destroy
    respond_to do |format|
      format.html { redirect_to estrellas_url, notice: 'Estrella was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estrella
      @estrella = Estrella.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def estrella_params
      params.require(:estrella).permit(:nombre)
    end
end
