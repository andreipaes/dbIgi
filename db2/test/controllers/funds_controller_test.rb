require 'test_helper'

class FundsControllerTest < ActionController::TestCase
  setup do
    @fund = funds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:funds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fund" do
    assert_difference('Fund.count') do
      post :create, fund: { adminFee: @fund.adminFee, anbimaClass: @fund.anbimaClass, cnpj: @fund.cnpj, cvmClass: @fund.cvmClass, exclusive: @fund.exclusive, hasRestriction: @fund.hasRestriction, isIgi: @fund.isIgi, isIgiExotic: @fund.isIgiExotic, isinCode: @fund.isinCode, minimumInvestmentAmount: @fund.minimumInvestmentAmount, name: @fund.name, niPeerGroupName: @fund.niPeerGroupName, nqPeerGroupName: @fund.nqPeerGroupName, performanceFeeDescription: @fund.performanceFeeDescription, redemptionConversionPeriod: @fund.redemptionConversionPeriod, redemptionPaymentPeriod: @fund.redemptionPaymentPeriod, shortName: @fund.shortName, targetClientList: @fund.targetClientList, totalShareHolders: @fund.totalShareHolders, vehicleType: @fund.vehicleType }
    end

    assert_redirected_to fund_path(assigns(:fund))
  end

  test "should show fund" do
    get :show, id: @fund
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fund
    assert_response :success
  end

  test "should update fund" do
    patch :update, id: @fund, fund: { adminFee: @fund.adminFee, anbimaClass: @fund.anbimaClass, cnpj: @fund.cnpj, cvmClass: @fund.cvmClass, exclusive: @fund.exclusive, hasRestriction: @fund.hasRestriction, isIgi: @fund.isIgi, isIgiExotic: @fund.isIgiExotic, isinCode: @fund.isinCode, minimumInvestmentAmount: @fund.minimumInvestmentAmount, name: @fund.name, niPeerGroupName: @fund.niPeerGroupName, nqPeerGroupName: @fund.nqPeerGroupName, performanceFeeDescription: @fund.performanceFeeDescription, redemptionConversionPeriod: @fund.redemptionConversionPeriod, redemptionPaymentPeriod: @fund.redemptionPaymentPeriod, shortName: @fund.shortName, targetClientList: @fund.targetClientList, totalShareHolders: @fund.totalShareHolders, vehicleType: @fund.vehicleType }
    assert_redirected_to fund_path(assigns(:fund))
  end

  test "should destroy fund" do
    assert_difference('Fund.count', -1) do
      delete :destroy, id: @fund
    end

    assert_redirected_to funds_path
  end
end
