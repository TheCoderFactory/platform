class InclassesController < ApplicationController
  before_action :set_inclass, only: [:show, :edit, :update, :destroy]

  # GET /inclasses
  # GET /inclasses.json
  def index
    @inclasses = Inclass.all
  end

  # GET /inclasses/1
  # GET /inclasses/1.json
  def show

    @week = @inclass.week
  end

  # GET /inclasses/new
  def new
    @inclass = Inclass.new
  end

  # GET /inclasses/1/edit
  def edit
  end

  # POST /inclasses
  # POST /inclasses.json
  def create
    @inclass = Inclass.new(inclass_params)

    respond_to do |format|
      if @inclass.save
        format.html { redirect_to @inclass, notice: 'Inclass was successfully created.' }
        format.json { render action: 'show', status: :created, location: @inclass }
      else
        format.html { render action: 'new' }
        format.json { render json: @inclass.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inclasses/1
  # PATCH/PUT /inclasses/1.json
  def update
    respond_to do |format|
      if @inclass.update(inclass_params)
        format.html { redirect_to @inclass, notice: 'Inclass was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @inclass.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inclasses/1
  # DELETE /inclasses/1.json
  def destroy
    @inclass.destroy
    respond_to do |format|
      format.html { redirect_to inclasses_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inclass
      @inclass = Inclass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inclass_params
      params.require(:inclass).permit(:week_id, :day, :title, :intro)
    end
end
