class HopAdditionsController < ApplicationController
  before_action :set_hop_addition, only: [:show, :edit, :update, :destroy]
  before_action :set_recipe
  before_action :set_hop_additions, only: [:index, :create, :update, :destroy]

  # GET /hop_additions
  # GET /hop_additions.json
  def index
    respond_to do |format|
      format.js { render :index }
    end
  end

  # GET /hop_additions/1
  # GET /hop_additions/1.json
  def show
  end

  # GET /hop_additions/new
  def new
    @hop_addition = HopAddition.new
    @hop_addition.recipe = @recipe

    respond_to do |format|
      format.js { render :new }
    end
  end

  # GET /hop_additions/1/edit
  def edit
    respond_to do |format|
      format.js { render :edit }
    end
  end

  # POST /hop_additions
  # POST /hop_additions.json
  def create
    @hop_addition = HopAddition.new(hop_addition_params)

    respond_to do |format|
      if @hop_addition.save
        format.js { render :index }
      else
        format.js { render :new}
      end
    end
  end

  # PATCH/PUT /hop_additions/1
  # PATCH/PUT /hop_additions/1.json
  def update
    respond_to do |format|
      if @hop_addition.update(hop_addition_params)
        format.js { render :index }
      else
        format.js { render :edit}
      end
    end
  end

  # DELETE /hop_additions/1
  # DELETE /hop_additions/1.json
  def destroy
    @hop_addition.destroy
    respond_to do |format|
      format.js { render :index }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hop_addition
      @hop_addition = HopAddition.find(params[:id])
    end

    def set_recipe
      @recipe = Recipe.find(params[:recipe_id])
    end

    def set_hop_additions
      @hop_additions = @recipe.hop_additions.order(:use, amount: :asc)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hop_addition_params
      params.require(:hop_addition).permit(:recipe_id, :hop_id, :amount, :time_unit, :time, :duration_unit, :duration, :use)
    end
end
