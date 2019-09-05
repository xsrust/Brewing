class FermentableAdditionsController < ApplicationController
  before_action :set_fermentable_addition, only: [:show, :edit, :update, :destroy]
  before_action :set_recipe
  before_action :set_fermentable_additions, only: [:index, :create, :update, :destroy]

  # GET /fermentable_additions
  # GET /fermentable_additions.json
  def index
    @fermentable_additions = FermentableAddition.all

    respond_to do |format|
      format.js { render :index }
    end
  end

  # GET /fermentable_additions/1
  # GET /fermentable_additions/1.json
  def show
  end

  # GET /fermentable_additions/new
  def new
    @fermentable_addition = FermentableAddition.new
    @fermentable_addition.recipe = @recipe

    respond_to do |format|
      format.js { render :new }
    end
  end

  # GET /fermentable_additions/1/edit
  def edit
    respond_to do |format|
      format.js { render :edit }
    end
  end

  # POST /fermentable_additions
  # POST /fermentable_additions.json
  def create
    @fermentable_addition = FermentableAddition.new(fermentable_addition_params)

    respond_to do |format|
      if @fermentable_addition.save
        format.js { render :index }
      else
        format.js { render :new}
      end
    end
  end

  # PATCH/PUT /fermentable_additions/1
  # PATCH/PUT /fermentable_additions/1.json
  def update
    pp @fermentable_addition.errors
    respond_to do |format|
      if @fermentable_addition.update(fermentable_addition_params)
        format.js { render :index }
      else
        format.js { render :edit}
      end
    end
  end

  # DELETE /fermentable_additions/1
  # DELETE /fermentable_additions/1.json
  def destroy
    @fermentable_addition.destroy
    respond_to do |format|
      format.js { render :index }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fermentable_addition
      @fermentable_addition = FermentableAddition.find(params[:id])
    end

    def set_recipe
      @recipe = Recipe.find(params[:recipe_id])
    end

    def set_fermentable_additions
      @fermentable_additions = @recipe.fermentable_additions.order(:use, amount: :asc)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fermentable_addition_params
      params.require(:fermentable_addition).permit(:recipe_id, :fermentable_id, :amount, :time_unit, :time, :duration_unit, :duration, :specific_gravity, :step, :use)
    end
end
