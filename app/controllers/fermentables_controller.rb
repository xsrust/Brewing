class FermentablesController < ApplicationController
  before_action :set_fermentable, only: [:show, :edit, :update, :destroy]

  # GET /fermentables
  # GET /fermentables.json
  def index
    @fermentables = Fermentable.all
  end

  # GET /fermentables/1
  # GET /fermentables/1.json
  def show
  end

  # GET /fermentables/new
  def new
    @fermentable = Fermentable.new
  end

  # GET /fermentables/1/edit
  def edit
  end

  # POST /fermentables
  # POST /fermentables.json
  def create
    @fermentable = Fermentable.new(fermentable_params)

    respond_to do |format|
      if @fermentable.save
        format.html { redirect_to @fermentable, notice: 'Fermentable was successfully created.' }
        format.json { render :show, status: :created, location: @fermentable }
      else
        format.html { render :new }
        format.json { render json: @fermentable.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fermentables/1
  # PATCH/PUT /fermentables/1.json
  def update
    respond_to do |format|
      if @fermentable.update(fermentable_params)
        format.html { redirect_to @fermentable, notice: 'Fermentable was successfully updated.' }
        format.json { render :show, status: :ok, location: @fermentable }
      else
        format.html { render :edit }
        format.json { render json: @fermentable.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fermentables/1
  # DELETE /fermentables/1.json
  def destroy
    @fermentable.destroy
    respond_to do |format|
      format.html { redirect_to fermentables_url, notice: 'Fermentable was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fermentable
      @fermentable = Fermentable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fermentable_params
      params.require(:fermentable).permit(:name, :type, :producer, :grain_group, :potential, :color)
    end
end
