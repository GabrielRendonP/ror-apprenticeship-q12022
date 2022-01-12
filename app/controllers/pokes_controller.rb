class PokesController < ApplicationController
  before_action :set_poke, only: %i[ show edit update destroy ]

  # GET /pokes or /pokes.json
  def index
    @pokes = Poke.all
  end

  # GET /pokes/1 or /pokes/1.json
  def show
  end

  # GET /pokes/new
  def new
    @poke = Poke.new
  end

  # GET /pokes/1/edit
  def edit
  end

  # POST /pokes or /pokes.json
  def create
    @poke = Poke.new(poke_params)

    respond_to do |format|
      if @poke.save
        format.html { redirect_to poke_url(@poke), notice: "Poke was successfully created." }
        format.json { render :show, status: :created, location: @poke }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @poke.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pokes/1 or /pokes/1.json
  def update
    respond_to do |format|
      if @poke.update(poke_params)
        format.html { redirect_to poke_url(@poke), notice: "Poke was successfully updated." }
        format.json { render :show, status: :ok, location: @poke }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @poke.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pokes/1 or /pokes/1.json
  def destroy
    @poke.destroy

    respond_to do |format|
      format.html { redirect_to pokes_url, notice: "Poke was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_poke
      @poke = Poke.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def poke_params
      params.require(:poke).permit(:name)
    end
end
