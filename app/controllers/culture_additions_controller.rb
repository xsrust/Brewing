class CultureAdditionsController < ApplicationController
  before_action :set_culture_addition, only: [:show, :edit, :update, :destroy]
  before_action :set_recipe
  before_action :set_culture_additions, only: [:index, :create, :update, :destroy]

  # GET /culture_additions
  # GET /culture_additions.json
  def index
    respond_to do |format|
      format.js { render :index }
    end
  end

  # GET /culture_additions/1
  # GET /culture_additions/1.json
  def show
  end

  # GET /culture_additions/new
  def new
    @culture_addition = CultureAddition.new
    @culture_addition.recipe = @recipe

    respond_to do |format|
      format.js { render :new }
    end
  end

  # GET /culture_additions/1/edit
  def edit
    respond_to do |format|
      format.js { render :edit }
    end
  end

  # POST /culture_additions
  # POST /culture_additions.json
  def create
    @culture_addition = CultureAddition.new(culture_addition_params)

    respond_to do |format|
      if @culture_addition.save
        format.js { render :index }
      else
        format.js { render :new}
      end
    end
  end

  # PATCH/PUT /culture_additions/1
  # PATCH/PUT /culture_additions/1.json
  def update
    respond_to do |format|
      if @culture_addition.update(culture_addition_params)
        format.js { render :index }
      else
        format.js { render :edit}
      end
    end
  end

  # DELETE /culture_additions/1
  # DELETE /culture_additions/1.json
  def destroy
    @culture_addition.destroy
    respond_to do |format|
      format.js { render :index }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_culture_addition
      @culture_addition = CultureAddition.find(params[:id])
    end

    def set_recipe
      @recipe = Recipe.find(params[:recipe_id])
    end

    def set_culture_additions
      @culture_additions = @recipe.culture_additions.order(amount: :asc)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def culture_addition_params
      params.require(:culture_addition).permit(:recipe_id, :culture_id, :amount, :time_unit, :time, :duration_unit, :duration, :attenuation, :cell_count_billions)
    end
end
