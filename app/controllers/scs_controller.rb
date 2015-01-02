class ScsController < ApplicationController
  before_action :set_sc, only: [:show, :edit, :update, :destroy]

  # GET /scs
  # GET /scs.json
  def index
    @scs = Sc.all
  end

  # GET /scs/1
  # GET /scs/1.json
  def show
  end

  # GET /scs/new
  def new
    @sc = Sc.new
  end

  # GET /scs/1/edit
  def edit
  end

  # POST /scs
  # POST /scs.json
  def create
    @sc = Sc.new(sc_params)

    respond_to do |format|
      if @sc.save
        format.html { redirect_to @sc, notice: 'Sc was successfully created.' }
        format.json { render :show, status: :created, location: @sc }
      else
        format.html { render :new }
        format.json { render json: @sc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scs/1
  # PATCH/PUT /scs/1.json
  def update
    respond_to do |format|
      if @sc.update(sc_params)
        format.html { redirect_to @sc, notice: 'Sc was successfully updated.' }
        format.json { render :show, status: :ok, location: @sc }
      else
        format.html { render :edit }
        format.json { render json: @sc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scs/1
  # DELETE /scs/1.json
  def destroy
    @sc.destroy
    respond_to do |format|
      format.html { redirect_to scs_url, notice: 'Sc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sc
      @sc = Sc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sc_params
      params.require(:sc).permit(:scs_id, :city_id, :sc_name, :sc_location)
    end
end
