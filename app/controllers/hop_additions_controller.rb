class HopAdditionsController < ApplicationController
  before_action :set_hop_addition, only: [:show, :edit, :update, :destroy]

  # GET /hop_additions
  # GET /hop_additions.json
  def index
    @hop_additions = HopAddition.all
  end

  # GET /hop_additions/1
  # GET /hop_additions/1.json
  def show
  end

  # GET /hop_additions/new
  def new
    @hop_addition = HopAddition.new
  end

  # GET /hop_additions/1/edit
  def edit
  end

  # POST /hop_additions
  # POST /hop_additions.json
  def create
    @hop_addition = HopAddition.new(hop_addition_params)

    respond_to do |format|
      if @hop_addition.save
        format.html { redirect_to @hop_addition, notice: 'Hop addition was successfully created.' }
        format.json { render :show, status: :created, location: @hop_addition }
      else
        format.html { render :new }
        format.json { render json: @hop_addition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hop_additions/1
  # PATCH/PUT /hop_additions/1.json
  def update
    respond_to do |format|
      if @hop_addition.update(hop_addition_params)
        format.html { redirect_to @hop_addition, notice: 'Hop addition was successfully updated.' }
        format.json { render :show, status: :ok, location: @hop_addition }
      else
        format.html { render :edit }
        format.json { render json: @hop_addition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hop_additions/1
  # DELETE /hop_additions/1.json
  def destroy
    @hop_addition.destroy
    respond_to do |format|
      format.html { redirect_to hop_additions_url, notice: 'Hop addition was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hop_addition
      @hop_addition = HopAddition.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hop_addition_params
      params.require(:hop_addition).permit(:recipe_id, :hop_id, :amount, :time_unit, :time, :duration_unit, :duration)
    end
end
