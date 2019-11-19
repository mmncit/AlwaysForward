class InsuranceCoveragesController < ApplicationController

  before_action :confirm_logged_in?
  before_action :set_insurance_coverage, only: [:show, :edit, :update, :destroy]

  # GET /insurance_coverages
  # GET /insurance_coverages.json
  def index
    @insurance_coverages = InsuranceCoverage.all
  end

  # GET /insurance_coverages/1
  # GET /insurance_coverages/1.json
  def show
  end

  # GET /insurance_coverages/new
  def new
    @insurance_coverage = InsuranceCoverage.new
  end

  # GET /insurance_coverages/1/edit
  def edit
  end

  # POST /insurance_coverages
  # POST /insurance_coverages.json
  def create
    @insurance_coverage = InsuranceCoverage.new(insurance_coverage_params)

    respond_to do |format|
      if @insurance_coverage.save
        format.html { redirect_to @insurance_coverage, notice: 'Insurance coverage was successfully created.' }
        format.json { render :show, status: :created, location: @insurance_coverage }
      else
        format.html { render :new }
        format.json { render json: @insurance_coverage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /insurance_coverages/1
  # PATCH/PUT /insurance_coverages/1.json
  def update
    respond_to do |format|
      if @insurance_coverage.update(insurance_coverage_params)
        format.html { redirect_to @insurance_coverage, notice: 'Insurance coverage was successfully updated.' }
        format.json { render :show, status: :ok, location: @insurance_coverage }
      else
        format.html { render :edit }
        format.json { render json: @insurance_coverage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /insurance_coverages/1
  # DELETE /insurance_coverages/1.json
  def destroy
    @insurance_coverage.destroy
    respond_to do |format|
      format.html { redirect_to insurance_coverages_url, notice: 'Insurance coverage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_insurance_coverage
      @insurance_coverage = InsuranceCoverage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def insurance_coverage_params
      params.require(:insurance_coverage).permit(:employer, :insurance_company, :policy_number, :coverage_percentage, :coverage_type, :product_quantity, :maximum_amount, :coverage_frequency, :coverage_period)
    end
end
