class FundDataAddPrimaryKey < ActiveRecord::Migration
  
  
  def change
    
    remove_column :fund_data, :id
    execute "ALTER TABLE `fund_data` ADD PRIMARY KEY(date_id, fund_id, period_id)"
  end

end
