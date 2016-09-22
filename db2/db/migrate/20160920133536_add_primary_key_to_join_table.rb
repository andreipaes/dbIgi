class AddPrimaryKeyToJoinTable < ActiveRecord::Migration
  


   
  def change
   execute "ALTER TABLE `funds_portfolios` ADD PRIMARY KEY(fund_id, portfolio_id)"
    end
end
