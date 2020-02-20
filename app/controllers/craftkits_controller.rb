class CraftkitsController < ApplicationController
  before_action :set_craftkit, only: [:show, :edit, :update, :destroy]

  # GET /craftkits
  # GET /craftkits.json
  def index
    @craftkits = Craftkit.all
  end

  # GET /craftkits/1
  # GET /craftkits/1.json
  def show
  end

  # GET /craftkits/new
  def new
    @craftkit = Craftkit.new
  end

  # GET /craftkits/1/edit
  def edit
  end

  # POST /craftkits
  # POST /craftkits.json
  def create
    @craftkit = Craftkit.new(craftkit_params)

    respond_to do |format|
      if @craftkit.save
        format.html { redirect_to @craftkit, notice: 'Craftkit was successfully created.' }
        format.json { render :show, status: :created, location: @craftkit }
      else
        format.html { render :new }
        format.json { render json: @craftkit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /craftkits/1
  # PATCH/PUT /craftkits/1.json
  def update
    respond_to do |format|
      if @craftkit.update(craftkit_params)
        format.html { redirect_to @craftkit, notice: 'Craftkit was successfully updated.' }
        format.json { render :show, status: :ok, location: @craftkit }
      else
        format.html { render :edit }
        format.json { render json: @craftkit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /craftkits/1
  # DELETE /craftkits/1.json
  def destroy
    @craftkit.destroy
    respond_to do |format|
      format.html { redirect_to craftkits_url, notice: 'Craftkit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_craftkit
      @craftkit = Craftkit.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def craftkit_params
      params.require(:craftkit).permit(:craft, :references, :donatekit_id, :qty)
    end
end
