class Fund < ActiveRecord::Base
	has_and_belongs_to_many :portfolios
	belongs_to :manager
	has_many :fund_data
end
