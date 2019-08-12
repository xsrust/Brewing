class CultureAdditionsController < ApplicationController
  before_action :set_culture_addition, only: [:show, :edit, :update, :destroy]

  # GET /culture_additions
  # GET /culture_additions.json
  def index
    @culture_additions = CultureAddition.all
  end

  # GET /culture_additions/1
  # GET /culture_additions/1.json
  def show
  end

  # GET /culture_additions/new
  def new
    @culture_addition = CultureAddition.new
  end

  # GET /culture_additions/1/edit
  def edit
  end

  # POST /culture_additions
  # POST /culture_additions.json
  def create
    @culture_addition = CultureAddition.new(culture_addition_params)

    respond_to do |format|
      if @culture_addition.save
        format.html { redirect_to @culture_addition, notice: 'Culture addition was successfully created.' }
        format.json { render :show, status: :created, location: @culture_addition }
      else
        format.html { render :new }
        format.json { render json: @culture_addition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /culture_additions/1
  # PATCH/PUT /culture_additions/1.json
  def update
    respond_to do |format|
      if @culture_addition.update(culture_addition_params)
        format.html { redirect_to @culture_addition, notice: 'Culture addition was successfully updated.' }
        format.json { render :show, status: :ok, location: @culture_addition }
      else
        format.html { render :edit }
        format.json { render json: @culture_addition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /culture_additions/1
  # DELETE /culture_additions/1.json
  def destroy
    @culture_addition.destroy
    respond_to do |format|
      format.html { redirect_to culture_additions_url, notice: 'Culture addition was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_culture_addition
      @culture_addition = CultureAddition.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def culture_addition_params
      params.require(:culture_addition).permit(:recipe_id, :culture_id, :amount, :time_unit, :time, :duration_unit, :duration, :attenuation, :cell_count_billions)
    end
end
