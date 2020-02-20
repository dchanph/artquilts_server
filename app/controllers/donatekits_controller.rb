class DonatekitsController < ApplicationController
  before_action :set_donatekit, only: [:show, :edit, :update, :destroy]

  # GET /donatekits
  # GET /donatekits.json
  def index
    @donatekits = Donatekit.all
  end

  # GET /donatekits/1
  # GET /donatekits/1.json
  def show
  end

  # GET /donatekits/new
  def new
    @donatekit = Donatekit.new
  end

  # GET /donatekits/1/edit
  def edit
  end

  # POST /donatekits
  # POST /donatekits.json
  def create
    @donatekit = Donatekit.new(donatekit_params)

    respond_to do |format|
      if @donatekit.save
        format.html { redirect_to @donatekit, notice: 'Donatekit was successfully created.' }
        format.json { render :show, status: :created, location: @donatekit }
      else
        format.html { render :new }
        format.json { render json: @donatekit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /donatekits/1
  # PATCH/PUT /donatekits/1.json
  def update
    respond_to do |format|
      if @donatekit.update(donatekit_params)
        format.html { redirect_to @donatekit, notice: 'Donatekit was successfully updated.' }
        format.json { render :show, status: :ok, location: @donatekit }
      else
        format.html { render :edit }
        format.json { render json: @donatekit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /donatekits/1
  # DELETE /donatekits/1.json
  def destroy
    @donatekit.destroy
    respond_to do |format|
      format.html { redirect_to donatekits_url, notice: 'Donatekit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_donatekit
      @donatekit = Donatekit.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def donatekit_params
      params.require(:donatekit).permit(:kitImg, :kitName, :kitCategory, :kitDetails, :kitCost)
    end
end
