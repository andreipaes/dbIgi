class CreateFunds < ActiveRecord::Migration
  def change
    create_table :funds do |t|
      t.string :name
      t.string :shortName
      t.string :isinCode
      t.string :cnpj
      t.boolean :exclusive
      t.string :nqPeerGroupName
      t.string :niPeerGroupName
      t.string :cvmClass
      t.string :anbimaClass
      t.float :adminFee
      t.text :performanceFeeDescription
      t.boolean :isIgi
      t.boolean :isIgiExotic
      t.boolean :hasRestriction
      t.string :targetClientList
      t.float :minimumInvestmentAmount
      t.string :vehicleType
      t.string :redemptionPaymentPeriod
      t.string :redemptionConversionPeriod
      t.integer :totalShareHolders
      t.references :manager, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
