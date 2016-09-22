class FundDatum < ActiveRecord::Base
	belongs_to :fund
	self.primary_keys = :date_id, :fund_id, :period_id
end
