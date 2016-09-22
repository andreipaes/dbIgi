require 'test_helper'

class FundDataControllerTest < ActionController::TestCase
  setup do
    @fund_datum = fund_data(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fund_data)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fund_datum" do
    assert_difference('FundDatum.count') do
      post :create, fund_datum: { BetaBenchmarkStringID_10: @fund_datum.BetaBenchmarkStringID_10, BetaBenchmarkStringID_1: @fund_datum.BetaBenchmarkStringID_1, BetaBenchmarkStringID_2: @fund_datum.BetaBenchmarkStringID_2, BetaBenchmarkStringID_3: @fund_datum.BetaBenchmarkStringID_3, BetaBenchmarkStringID_4: @fund_datum.BetaBenchmarkStringID_4, BetaBenchmarkStringID_5: @fund_datum.BetaBenchmarkStringID_5, BetaBenchmarkStringID_6: @fund_datum.BetaBenchmarkStringID_6, BetaBenchmarkStringID_7: @fund_datum.BetaBenchmarkStringID_7, BetaBenchmarkStringID_8: @fund_datum.BetaBenchmarkStringID_8, BetaBenchmarkStringID_9: @fund_datum.BetaBenchmarkStringID_9, BetaValue_10: @fund_datum.BetaValue_10, BetaValue_1: @fund_datum.BetaValue_1, BetaValue_2: @fund_datum.BetaValue_2, BetaValue_3: @fund_datum.BetaValue_3, BetaValue_4: @fund_datum.BetaValue_4, BetaValue_5: @fund_datum.BetaValue_5, BetaValue_6: @fund_datum.BetaValue_6, BetaValue_7: @fund_datum.BetaValue_7, BetaValue_8: @fund_datum.BetaValue_8, BetaValue_9: @fund_datum.BetaValue_9, accumulatedNetCapitalGain: @fund_datum.accumulatedNetCapitalGain, alpha: @fund_datum.alpha, benchmarkStringId: @fund_datum.benchmarkStringId, benchmarkVolatility: @fund_datum.benchmarkVolatility, benchmarkYield: @fund_datum.benchmarkYield, certaintyEquivalentAggressive: @fund_datum.certaintyEquivalentAggressive, certaintyEquivalentConservative: @fund_datum.certaintyEquivalentConservative, certaintyEquivalentModerate: @fund_datum.certaintyEquivalentModerate, date: @fund_datum.date, doublenetInvestRatingAggressive: @fund_datum.doublenetInvestRatingAggressive, downsideRisk: @fund_datum.downsideRisk, excessReturn: @fund_datum.excessReturn, informationRatio: @fund_datum.informationRatio, mean: @fund_datum.mean, minimumVarianceTrackingError: @fund_datum.minimumVarianceTrackingError, netInvestRatingConservative: @fund_datum.netInvestRatingConservative, netInvestRatingGlobalAggressive: @fund_datum.netInvestRatingGlobalAggressive, netInvestRatingGlobalConservative: @fund_datum.netInvestRatingGlobalConservative, netInvestRatingGlobalModerate: @fund_datum.netInvestRatingGlobalModerate, netInvestRatingModerate: @fund_datum.netInvestRatingModerate, networth: @fund_datum.networth, oneDayYield: @fund_datum.oneDayYield, oneWeekYield: @fund_datum.oneWeekYield, period: @fund_datum.period, returnBasisRule: @fund_datum.returnBasisRule, sharpe: @fund_datum.sharpe, sortino: @fund_datum.sortino, trackingError: @fund_datum.trackingError, volatility: @fund_datum.volatility, yield: @fund_datum.yield, yieldBenchmarkYieldRatio: @fund_datum.yieldBenchmarkYieldRatio }
    end

    assert_redirected_to fund_datum_path(assigns(:fund_datum))
  end

  test "should show fund_datum" do
    get :show, id: @fund_datum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fund_datum
    assert_response :success
  end

  test "should update fund_datum" do
    patch :update, id: @fund_datum, fund_datum: { BetaBenchmarkStringID_10: @fund_datum.BetaBenchmarkStringID_10, BetaBenchmarkStringID_1: @fund_datum.BetaBenchmarkStringID_1, BetaBenchmarkStringID_2: @fund_datum.BetaBenchmarkStringID_2, BetaBenchmarkStringID_3: @fund_datum.BetaBenchmarkStringID_3, BetaBenchmarkStringID_4: @fund_datum.BetaBenchmarkStringID_4, BetaBenchmarkStringID_5: @fund_datum.BetaBenchmarkStringID_5, BetaBenchmarkStringID_6: @fund_datum.BetaBenchmarkStringID_6, BetaBenchmarkStringID_7: @fund_datum.BetaBenchmarkStringID_7, BetaBenchmarkStringID_8: @fund_datum.BetaBenchmarkStringID_8, BetaBenchmarkStringID_9: @fund_datum.BetaBenchmarkStringID_9, BetaValue_10: @fund_datum.BetaValue_10, BetaValue_1: @fund_datum.BetaValue_1, BetaValue_2: @fund_datum.BetaValue_2, BetaValue_3: @fund_datum.BetaValue_3, BetaValue_4: @fund_datum.BetaValue_4, BetaValue_5: @fund_datum.BetaValue_5, BetaValue_6: @fund_datum.BetaValue_6, BetaValue_7: @fund_datum.BetaValue_7, BetaValue_8: @fund_datum.BetaValue_8, BetaValue_9: @fund_datum.BetaValue_9, accumulatedNetCapitalGain: @fund_datum.accumulatedNetCapitalGain, alpha: @fund_datum.alpha, benchmarkStringId: @fund_datum.benchmarkStringId, benchmarkVolatility: @fund_datum.benchmarkVolatility, benchmarkYield: @fund_datum.benchmarkYield, certaintyEquivalentAggressive: @fund_datum.certaintyEquivalentAggressive, certaintyEquivalentConservative: @fund_datum.certaintyEquivalentConservative, certaintyEquivalentModerate: @fund_datum.certaintyEquivalentModerate, date: @fund_datum.date, doublenetInvestRatingAggressive: @fund_datum.doublenetInvestRatingAggressive, downsideRisk: @fund_datum.downsideRisk, excessReturn: @fund_datum.excessReturn, informationRatio: @fund_datum.informationRatio, mean: @fund_datum.mean, minimumVarianceTrackingError: @fund_datum.minimumVarianceTrackingError, netInvestRatingConservative: @fund_datum.netInvestRatingConservative, netInvestRatingGlobalAggressive: @fund_datum.netInvestRatingGlobalAggressive, netInvestRatingGlobalConservative: @fund_datum.netInvestRatingGlobalConservative, netInvestRatingGlobalModerate: @fund_datum.netInvestRatingGlobalModerate, netInvestRatingModerate: @fund_datum.netInvestRatingModerate, networth: @fund_datum.networth, oneDayYield: @fund_datum.oneDayYield, oneWeekYield: @fund_datum.oneWeekYield, period: @fund_datum.period, returnBasisRule: @fund_datum.returnBasisRule, sharpe: @fund_datum.sharpe, sortino: @fund_datum.sortino, trackingError: @fund_datum.trackingError, volatility: @fund_datum.volatility, yield: @fund_datum.yield, yieldBenchmarkYieldRatio: @fund_datum.yieldBenchmarkYieldRatio }
    assert_redirected_to fund_datum_path(assigns(:fund_datum))
  end

  test "should destroy fund_datum" do
    assert_difference('FundDatum.count', -1) do
      delete :destroy, id: @fund_datum
    end

    assert_redirected_to fund_data_path
  end
end
