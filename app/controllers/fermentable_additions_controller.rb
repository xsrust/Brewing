class FermentableAdditionsController < ApplicationController
  before_action :set_fermentable_addition, only: [:show, :edit, :update, :destroy]

  # GET /fermentable_additions
  # GET /fermentable_additions.json
  def index
    @fermentable_additions = FermentableAddition.all
  end

  # GET /fermentable_additions/1
  # GET /fermentable_additions/1.json
  def show
  end

  # GET /fermentable_additions/new
  def new
    @fermentable_addition = FermentableAddition.new
  end

  # GET /fermentable_additions/1/edit
  def edit
  end

  # POST /fermentable_additions
  # POST /fermentable_additions.json
  def create
    @fermentable_addition = FermentableAddition.new(fermentable_addition_params)

    respond_to do |format|
      if @fermentable_addition.save
        format.html { redirect_to @fermentable_addition, notice: 'Fermentable addition was successfully created.' }
        format.json { render :show, status: :created, location: @fermentable_addition }
      else
        format.html { render :new }
        format.json { render json: @fermentable_addition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fermentable_additions/1
  # PATCH/PUT /fermentable_additions/1.json
  def update
    respond_to do |format|
      if @fermentable_addition.update(fermentable_addition_params)
        format.html { redirect_to @fermentable_addition, notice: 'Fermentable addition was successfully updated.' }
        format.json { render :show, status: :ok, location: @fermentable_addition }
      else
        format.html { render :edit }
        format.json { render json: @fermentable_addition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fermentable_additions/1
  # DELETE /fermentable_additions/1.json
  def destroy
    @fermentable_addition.destroy
    respond_to do |format|
      format.html { redirect_to fermentable_additions_url, notice: 'Fermentable addition was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fermentable_addition
      @fermentable_addition = FermentableAddition.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fermentable_addition_params
      params.require(:fermentable_addition).permit(:recipe_id, :fermentable_id, :amount, :time_unit, :time, :duration_unit, :duration, :specific_gravity, :step, :use)
    end
end
