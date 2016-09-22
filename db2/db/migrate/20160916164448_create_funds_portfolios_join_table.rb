class CreateFundsPortfoliosJoinTable < ActiveRecord::Migration
  def change

  create_join_table :funds, :portfolios, id: false do |t|
    

    t.integer :fund_id
    t.integer :portfolio_id

    end
  end
end
 