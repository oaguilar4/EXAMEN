class CometaController < ApplicationController
  before_action :set_cometum, only: [:show, :edit, :update, :destroy]

  # GET /cometa
  # GET /cometa.json
  def index
    @cometa = Cometum.all
  end

  # GET /cometa/1
  # GET /cometa/1.json
  def show
  end

  # GET /cometa/new
  def new
    @cometum = Cometum.new
  end

  # GET /cometa/1/edit
  def edit
  end

  # POST /cometa
  # POST /cometa.json
  def create
    @cometum = Cometum.new(cometum_params)

    respond_to do |format|
      if @cometum.save
        format.html { redirect_to @cometum, notice: 'Cometum was successfully created.' }
        format.json { render :show, status: :created, location: @cometum }
      else
        format.html { render :new }
        format.json { render json: @cometum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cometa/1
  # PATCH/PUT /cometa/1.json
  def update
    respond_to do |format|
      if @cometum.update(cometum_params)
        format.html { redirect_to @cometum, notice: 'Cometum was successfully updated.' }
        format.json { render :show, status: :ok, location: @cometum }
      else
        format.html { render :edit }
        format.json { render json: @cometum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cometa/1
  # DELETE /cometa/1.json
  def destroy
    @cometum.destroy
    respond_to do |format|
      format.html { redirect_to cometa_url, notice: 'Cometum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cometum
      @cometum = Cometum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cometum_params
      params.require(:cometum).permit(:Nombre, :Longitud, :Anos)
    end
end
