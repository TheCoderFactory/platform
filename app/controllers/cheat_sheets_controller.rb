class CheatSheetsController < ApplicationController
  before_action :set_cheat_sheet, only: [:show, :edit, :update, :destroy]

  # GET /cheat_sheets
  # GET /cheat_sheets.json
  def index
    @cheat_sheets = CheatSheet.all
  end

  # GET /cheat_sheets/1
  # GET /cheat_sheets/1.json
  def show
  end

  # GET /cheat_sheets/new
  def new
    @cheat_sheet = CheatSheet.new
  end

  # GET /cheat_sheets/1/edit
  def edit
  end

  # POST /cheat_sheets
  # POST /cheat_sheets.json
  def create
    @cheat_sheet = CheatSheet.new(cheat_sheet_params)

    respond_to do |format|
      if @cheat_sheet.save
        format.html { redirect_to @cheat_sheet, notice: 'Cheat sheet was successfully created.' }
        format.json { render action: 'show', status: :created, location: @cheat_sheet }
      else
        format.html { render action: 'new' }
        format.json { render json: @cheat_sheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cheat_sheets/1
  # PATCH/PUT /cheat_sheets/1.json
  def update
    respond_to do |format|
      if @cheat_sheet.update(cheat_sheet_params)
        format.html { redirect_to @cheat_sheet, notice: 'Cheat sheet was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @cheat_sheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cheat_sheets/1
  # DELETE /cheat_sheets/1.json
  def destroy
    @cheat_sheet.destroy
    respond_to do |format|
      format.html { redirect_to cheat_sheets_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cheat_sheet
      @cheat_sheet = CheatSheet.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cheat_sheet_params
      params.require(:cheat_sheet).permit(:name, :icon, :gist)
    end
end
