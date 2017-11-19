class JerriesController < ApplicationController
  before_action :set_jerry, only: [:show, :edit, :update, :destroy]

  # GET /jerries
  # GET /jerries.json
  def index
    @jerries = Jerry.all
  end

  # GET /jerries/1
  # GET /jerries/1.json
  def show
  end

  # GET /jerries/new
  def new
    @jerry = Jerry.new
  end

  # GET /jerries/1/edit
  def edit
  end

  # POST /jerries
  # POST /jerries.json
  def create
    @jerry = Jerry.new(jerry_params)

    respond_to do |format|
      if @jerry.save
        format.html { redirect_to @jerry, notice: 'Jerry was successfully created.' }
        format.json { render :show, status: :created, location: @jerry }
      else
        format.html { render :new }
        format.json { render json: @jerry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jerries/1
  # PATCH/PUT /jerries/1.json
  def update
    respond_to do |format|
      if @jerry.update(jerry_params)
        format.html { redirect_to @jerry, notice: 'Jerry was successfully updated.' }
        format.json { render :show, status: :ok, location: @jerry }
      else
        format.html { render :edit }
        format.json { render json: @jerry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jerries/1
  # DELETE /jerries/1.json
  def destroy
    @jerry.destroy
    respond_to do |format|
      format.html { redirect_to jerries_url, notice: 'Jerry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jerry
      @jerry = Jerry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jerry_params
      params.require(:jerry).permit(:name, :description, :picture)
    end
end
