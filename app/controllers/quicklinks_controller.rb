class QuicklinksController < ApplicationController
  before_action :set_quicklink, only: [:show, :edit, :update, :destroy]

  # GET /quicklinks
  # GET /quicklinks.json
  def index
    @quicklinks = Quicklink.all
  end

  # GET /quicklinks/1
  # GET /quicklinks/1.json
  def show
  end

  # GET /quicklinks/new
  def new
    @quicklink = Quicklink.new
  end

  # GET /quicklinks/1/edit
  def edit
  end

  # POST /quicklinks
  # POST /quicklinks.json
  def create
    @quicklink = Quicklink.new(quicklink_params)

    respond_to do |format|
      if @quicklink.save
        format.html { redirect_to @quicklink, notice: 'Quicklink was successfully created.' }
        format.json { render action: 'show', status: :created, location: @quicklink }
      else
        format.html { render action: 'new' }
        format.json { render json: @quicklink.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quicklinks/1
  # PATCH/PUT /quicklinks/1.json
  def update
    respond_to do |format|
      if @quicklink.update(quicklink_params)
        format.html { redirect_to @quicklink, notice: 'Quicklink was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @quicklink.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quicklinks/1
  # DELETE /quicklinks/1.json
  def destroy
    @quicklink.destroy
    respond_to do |format|
      format.html { redirect_to quicklinks_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quicklink
      @quicklink = Quicklink.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def quicklink_params
      params.require(:quicklink).permit(:icon, :name, :url, :active, :important)
    end
end
