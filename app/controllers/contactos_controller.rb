class ContactosController < ApplicationController
  before_action :set_contacto, only: %i[ show edit update destroy ]

  # GET /contactos or /contactos.json
  def index
    @contactos = Contacto.all
    @contactos = Kaminari.paginate_array(@contactos).page(params[:page])

  end

  # GET /contactos/1 or /contactos/1.json
  def show
  end

  # GET /contactos/new
  def new
    @contacto = Contacto.new
  end

  # GET /contactos/1/edit
  def edit
  end

  # POST /contactos or /contactos.json
  def create
    @contacto = Contacto.new(contacto_params)

    respond_to do |format|
      if @contacto.save
        format.html { redirect_to contacto_url(@contacto), notice: "Contacto was successfully created." }
        format.json { render :show, status: :created, location: @contacto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @contacto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contactos/1 or /contactos/1.json
  def update
    respond_to do |format|
      if @contacto.update(contacto_params)
        format.html { redirect_to contacto_url(@contacto), notice: "Contacto was successfully updated." }
        format.json { render :show, status: :ok, location: @contacto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @contacto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contactos/1 or /contactos/1.json
  def destroy
    @contacto.destroy

    respond_to do |format|
      format.html { redirect_to contactos_url, notice: "Contacto was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contacto
      @contacto = Contacto.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def contacto_params
      params.require(:contacto).permit(:nombre, :correo, :asunto, :mensaje)
    end
end
