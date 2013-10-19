class TheftReportsController < ApplicationController
  before_action :set_theft_report, only: [:show, :edit, :update, :destroy]

  # GET /theft_reports
  # GET /theft_reports.json
  def index
    @theft_reports = TheftReport.all
  end

  # GET /theft_reports/1
  # GET /theft_reports/1.json
  def show
  end

  # GET /theft_reports/new
  def new
    @theft_report = TheftReport.new
  end

  # GET /theft_reports/1/edit
  def edit
  end

  # POST /theft_reports
  # POST /theft_reports.json
  def create
    @theft_report = TheftReport.new(theft_report_params)

    respond_to do |format|
      if @theft_report.save
        format.html { redirect_to @theft_report, notice: 'Theft report was successfully created.' }
        format.json { render action: 'show', status: :created, location: @theft_report }
      else
        format.html { render action: 'new' }
        format.json { render json: @theft_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /theft_reports/1
  # PATCH/PUT /theft_reports/1.json
  def update
    respond_to do |format|
      if @theft_report.update(theft_report_params)
        format.html { redirect_to @theft_report, notice: 'Theft report was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @theft_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /theft_reports/1
  # DELETE /theft_reports/1.json
  def destroy
    @theft_report.destroy
    respond_to do |format|
      format.html { redirect_to theft_reports_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_theft_report
      @theft_report = TheftReport.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def theft_report_params
      params.require(:theft_report).permit(:location, :theft_date, :theft_way, :bike_data)
    end
end
