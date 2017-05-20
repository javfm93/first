class ProoftablesController < ApplicationController
  before_action :set_prooftable, only: [:show, :edit, :update, :destroy]

  # GET /prooftables
  # GET /prooftables.json
  def index
    @prooftables = Prooftable.all
  end

  # GET /prooftables/1
  # GET /prooftables/1.json
  def show
  end

  # GET /prooftables/new
  def new
    @prooftable = Prooftable.new
  end

  # GET /prooftables/1/edit
  def edit
  end

  # POST /prooftables
  # POST /prooftables.json
  def create
    @prooftable = Prooftable.new(prooftable_params)

    respond_to do |format|
      if @prooftable.save
        format.html { redirect_to @prooftable, notice: 'Prooftable was successfully created.' }
        format.json { render :show, status: :created, location: @prooftable }
      else
        format.html { render :new }
        format.json { render json: @prooftable.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prooftables/1
  # PATCH/PUT /prooftables/1.json
  def update
    respond_to do |format|
      if @prooftable.update(prooftable_params)
        format.html { redirect_to @prooftable, notice: 'Prooftable was successfully updated.' }
        format.json { render :show, status: :ok, location: @prooftable }
      else
        format.html { render :edit }
        format.json { render json: @prooftable.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prooftables/1
  # DELETE /prooftables/1.json
  def destroy
    @prooftable.destroy
    respond_to do |format|
      format.html { redirect_to prooftables_url, notice: 'Prooftable was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prooftable
      @prooftable = Prooftable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prooftable_params
      params.require(:prooftable).permit(:table, :name)
    end
end
