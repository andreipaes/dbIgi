class FundDataController < ApplicationController
  before_action :set_fund_datum, only: [:show, :edit, :update, :destroy]

  # GET /fund_data
  # GET /fund_data.json
  def index
    @fund_data = FundDatum.all
  end

  # GET /fund_data/1
  # GET /fund_data/1.json
  def show
  end

  # GET /fund_data/new
  def new
    @fund_datum = FundDatum.new
  end

  # GET /fund_data/1/edit
  def edit
  end

  # POST /fund_data
  # POST /fund_data.json
  def create
    @fund_datum = FundDatum.new(fund_datum_params)

    respond_to do |format|
      if @fund_datum.save
        format.html { redirect_to @fund_datum, notice: 'Fund datum was successfully created.' }
        format.json { render :show, status: :created, location: @fund_datum }
      else
        format.html { render :new }
        format.json { render json: @fund_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fund_data/1
  # PATCH/PUT /fund_data/1.json
  def update
    respond_to do |format|
      if @fund_datum.update(fund_datum_params)
        format.html { redirect_to @fund_datum, notice: 'Fund datum was successfully updated.' }
        format.json { render :show, status: :ok, location: @fund_datum }
      else
        format.html { render :edit }
        format.json { render json: @fund_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fund_data/1
  # DELETE /fund_data/1.json
  def destroy
    @fund_datum.destroy
    respond_to do |format|
      format.html { redirect_to fund_data_url, notice: 'Fund datum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def array_for_params
     :id[:date_id, :period_id, :fund_id]
     

  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fund_datum
      @fund_datum = FundDatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fund_datum_params
      params.require(:fund_datum).permit(:date_id, :period_id, :networth, :returnBasisRule, :yield, :oneDayYield, :oneWeekYield, :yieldBenchmarkYieldRatio, :mean, :volatility, :benchmarkStringId, :benchmarkYield, :benchmarkVolatility, :excessReturn, :trackingError, :downsideRisk, :sharpe, :sortino, :alpha, :minimumVarianceTrackingError, :informationRatio, :certaintyEquivalentAggressive, :certaintyEquivalentModerate, :certaintyEquivalentConservative, :doublenetInvestRatingAggressive, :netInvestRatingModerate, :netInvestRatingConservative, :netInvestRatingGlobalAggressive, :netInvestRatingGlobalModerate, :netInvestRatingGlobalConservative, :accumulatedNetCapitalGain, :BetaBenchmarkStringID_1, :BetaValue_1, :BetaBenchmarkStringID_2, :BetaValue_2, :BetaBenchmarkStringID_3, :BetaValue_3, :BetaBenchmarkStringID_4, :BetaValue_4, :BetaBenchmarkStringID_5, :BetaValue_5, :BetaBenchmarkStringID_6, :BetaValue_6, :BetaBenchmarkStringID_7, :BetaValue_7, :BetaBenchmarkStringID_8, :BetaValue_8, :BetaBenchmarkStringID_9, :BetaValue_9, :BetaBenchmarkStringID_10, :BetaValue_10, :fund_id)
    end
end
