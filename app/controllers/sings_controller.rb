class SingsController < ApplicationController
  before_action :set_sing, only: [:show, :edit, :update, :destroy]

  # GET /sings
  # GET /sings.json
  def index
    @sings = Sing.all
  end

  # GET /sings/1
  # GET /sings/1.json
  def show
  end

  # GET /sings/new
  def new
    @sing = Sing.new
  end

  # GET /sings/1/edit
  def edit
  end

  # POST /sings
  # POST /sings.json
  def create
    @sing = Sing.new(sing_params)

    respond_to do |format|
      if @sing.save
        format.html { redirect_to @sing, notice: 'Sing was successfully created.' }
        format.json { render :show, status: :created, location: @sing }
      else
        format.html { render :new }
        format.json { render json: @sing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sings/1
  # PATCH/PUT /sings/1.json
  def update
    respond_to do |format|
      if @sing.update(sing_params)
        format.html { redirect_to @sing, notice: 'Sing was successfully updated.' }
        format.json { render :show, status: :ok, location: @sing }
      else
        format.html { render :edit }
        format.json { render json: @sing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sings/1
  # DELETE /sings/1.json
  def destroy
    @sing.destroy
    respond_to do |format|
      format.html { redirect_to sings_url, notice: 'Sing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sing
      @sing = Sing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sing_params
      params.require(:sing).permit(:username, :password)
    end
end
