# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160920133536) do

  create_table "fund_data", id: false, force: :cascade do |t|
    t.date     "date_id",                                                   null: false
    t.integer  "period_id",                         limit: 4,   default: 0, null: false
    t.float    "networth",                          limit: 24
    t.string   "returnBasisRule",                   limit: 255
    t.float    "yield",                             limit: 24
    t.float    "oneDayYield",                       limit: 24
    t.float    "oneWeekYield",                      limit: 24
    t.float    "yieldBenchmarkYieldRatio",          limit: 24
    t.float    "mean",                              limit: 24
    t.float    "volatility",                        limit: 24
    t.string   "benchmarkStringId",                 limit: 255
    t.float    "benchmarkYield",                    limit: 24
    t.float    "benchmarkVolatility",               limit: 24
    t.float    "excessReturn",                      limit: 24
    t.float    "trackingError",                     limit: 24
    t.float    "downsideRisk",                      limit: 24
    t.float    "sharpe",                            limit: 24
    t.float    "sortino",                           limit: 24
    t.float    "alpha",                             limit: 24
    t.float    "minimumVarianceTrackingError",      limit: 24
    t.float    "informationRatio",                  limit: 24
    t.float    "certaintyEquivalentAggressive",     limit: 24
    t.float    "certaintyEquivalentModerate",       limit: 24
    t.float    "certaintyEquivalentConservative",   limit: 24
    t.float    "doublenetInvestRatingAggressive",   limit: 24
    t.float    "netInvestRatingModerate",           limit: 24
    t.float    "netInvestRatingConservative",       limit: 24
    t.float    "netInvestRatingGlobalAggressive",   limit: 24
    t.float    "netInvestRatingGlobalModerate",     limit: 24
    t.float    "netInvestRatingGlobalConservative", limit: 24
    t.float    "accumulatedNetCapitalGain",         limit: 24
    t.string   "BetaBenchmarkStringID_1",           limit: 255
    t.float    "BetaValue_1",                       limit: 24
    t.string   "BetaBenchmarkStringID_2",           limit: 255
    t.float    "BetaValue_2",                       limit: 24
    t.string   "BetaBenchmarkStringID_3",           limit: 255
    t.float    "BetaValue_3",                       limit: 24
    t.string   "BetaBenchmarkStringID_4",           limit: 255
    t.float    "BetaValue_4",                       limit: 24
    t.string   "BetaBenchmarkStringID_5",           limit: 255
    t.float    "BetaValue_5",                       limit: 24
    t.string   "BetaBenchmarkStringID_6",           limit: 255
    t.float    "BetaValue_6",                       limit: 24
    t.string   "BetaBenchmarkStringID_7",           limit: 255
    t.float    "BetaValue_7",                       limit: 24
    t.string   "BetaBenchmarkStringID_8",           limit: 255
    t.float    "BetaValue_8",                       limit: 24
    t.string   "BetaBenchmarkStringID_9",           limit: 255
    t.float    "BetaValue_9",                       limit: 24
    t.string   "BetaBenchmarkStringID_10",          limit: 255
    t.float    "BetaValue_10",                      limit: 24
    t.integer  "fund_id",                           limit: 4,               null: false
    t.datetime "created_at",                                                null: false
    t.datetime "updated_at",                                                null: false
  end

  add_index "fund_data", ["fund_id"], name: "index_fund_data_on_fund_id", using: :btree

  create_table "funds", force: :cascade do |t|
    t.string   "name",                       limit: 255
    t.string   "shortName",                  limit: 255
    t.string   "isinCode",                   limit: 255
    t.string   "cnpj",                       limit: 255
    t.boolean  "exclusive"
    t.string   "nqPeerGroupName",            limit: 255
    t.string   "niPeerGroupName",            limit: 255
    t.string   "cvmClass",                   limit: 255
    t.string   "anbimaClass",                limit: 255
    t.float    "adminFee",                   limit: 24
    t.text     "performanceFeeDescription",  limit: 65535
    t.boolean  "isIgi"
    t.boolean  "isIgiExotic"
    t.boolean  "hasRestriction"
    t.string   "targetClientList",           limit: 255
    t.float    "minimumInvestmentAmount",    limit: 24
    t.string   "vehicleType",                limit: 255
    t.string   "redemptionPaymentPeriod",    limit: 255
    t.string   "redemptionConversionPeriod", limit: 255
    t.integer  "totalShareHolders",          limit: 4
    t.integer  "manager_id",                 limit: 4,     null: false
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  add_index "funds", ["manager_id"], name: "index_funds_on_manager_id", using: :btree

  create_table "funds_portfolios", id: false, force: :cascade do |t|
    t.integer "fund_id",      limit: 4, default: 0, null: false
    t.integer "portfolio_id", limit: 4, default: 0, null: false
  end

  create_table "managers", force: :cascade do |t|
    t.string   "stringId",   limit: 255
    t.string   "name",       limit: 255
    t.string   "cnpj",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "portfolios", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "user_id",    limit: 4,   null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "portfolios", ["user_id"], name: "index_portfolios_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "email",      limit: 255
    t.string   "password",   limit: 255
    t.boolean  "admin"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_foreign_key "funds", "managers"
  add_foreign_key "portfolios", "users"
end
