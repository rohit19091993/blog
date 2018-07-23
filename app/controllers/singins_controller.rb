class SinginsController < ApplicationController
  before_action :set_singin, only: [:show, :edit, :update, :destroy]

  # GET /singins
  # GET /singins.json
  def index
    @singins = Singin.all
  end

  # GET /singins/1
  # GET /singins/1.json
  def show
  end

  # GET /singins/new
  def new
    @singin = Singin.new
  end

  # GET /singins/1/edit
  def edit
  end

  # POST /singins
  # POST /singins.json
  def create
    @singin = Singin.new(singin_params)

    respond_to do |format|
      if @singin.save
        format.html { redirect_to @singin, notice: 'Singin was successfully created.' }
        format.json { render :show, status: :created, location: @singin }
      else
        format.html { render :new }
        format.json { render json: @singin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /singins/1
  # PATCH/PUT /singins/1.json
  def update
    respond_to do |format|
      if @singin.update(singin_params)
        format.html { redirect_to @singin, notice: 'Singin was successfully updated.' }
        format.json { render :show, status: :ok, location: @singin }
      else
        format.html { render :edit }
        format.json { render json: @singin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /singins/1
  # DELETE /singins/1.json
  def destroy
    @singin.destroy
    respond_to do |format|
      format.html { redirect_to singins_url, notice: 'Singin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_singin
      @singin = Singin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def singin_params
      params.require(:singin).permit(:username, :password)
    end
end
