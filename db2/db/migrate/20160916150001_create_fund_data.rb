class CreateFundData < ActiveRecord::Migration
  def change
    create_table :fund_data do |t|
      t.date :date_id
      t.integer :period_id
      t.float :networth
      t.string :returnBasisRule
      t.float :yield
      t.float :oneDayYield
      t.float :oneWeekYield
      t.float :yieldBenchmarkYieldRatio
      t.float :mean
      t.float :volatility
      t.string :benchmarkStringId
      t.float :benchmarkYield
      t.float :benchmarkVolatility
      t.float :excessReturn
      t.float :trackingError
      t.float :downsideRisk
      t.float :sharpe
      t.float :sortino
      t.float :alpha
      t.float :minimumVarianceTrackingError
      t.float :informationRatio
      t.float :certaintyEquivalentAggressive
      t.float :certaintyEquivalentModerate
      t.float :certaintyEquivalentConservative
      t.float :doublenetInvestRatingAggressive
      t.float :netInvestRatingModerate
      t.float :netInvestRatingConservative
      t.float :netInvestRatingGlobalAggressive
      t.float :netInvestRatingGlobalModerate
      t.float :netInvestRatingGlobalConservative
      t.float :accumulatedNetCapitalGain
      t.string :BetaBenchmarkStringID_1
      t.float :BetaValue_1
      t.string :BetaBenchmarkStringID_2
      t.float :BetaValue_2
      t.string :BetaBenchmarkStringID_3
      t.float :BetaValue_3
      t.string :BetaBenchmarkStringID_4
      t.float :BetaValue_4
      t.string :BetaBenchmarkStringID_5
      t.float :BetaValue_5
      t.string :BetaBenchmarkStringID_6
      t.float :BetaValue_6
      t.string :BetaBenchmarkStringID_7
      t.float :BetaValue_7
      t.string :BetaBenchmarkStringID_8
      t.float :BetaValue_8
      t.string :BetaBenchmarkStringID_9
      t.float :BetaValue_9
      t.string :BetaBenchmarkStringID_10
      t.float :BetaValue_10
      t.references :fund, index: true, null: false
      t.timestamps null: false
    end
  end
end
