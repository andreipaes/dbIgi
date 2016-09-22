require 'faker'

FactoryGirl.define do
  factory :user do
    name            {Faker::Name.name}
    email                 {Faker::Internet.email}
    admin                 {Faker::Boolean.boolean}
    password              "password"

    
  end


  factory :manager do
  	stringId                 {Faker::Name.prefix}
    name            {Faker::Name.name}
    cnpj                 {Faker::Number.number(14)}
    
    
  end


  factory :portfolio do
    name            {Faker::Name.name}
    user  
  end

  factory :fund do
    name            {Faker::Name.name}
    shortName  {Faker::Name.prefix}
      isinCode  {Faker::Business.credit_card_number}
      cnpj  {Faker::Business.credit_card_number}
      exclusive  {Faker::Boolean.boolean}
      nqPeerGroupName  {Faker::Space.company}
      niPeerGroupName  {Faker::Space.company}
      cvmClass  {Faker::Name.name}
      anbimaClass  {Faker::Name.name}
      adminFee  {Faker::Commerce.price} 
      performanceFeeDescription  {"TEXT"}
      isIgi  {Faker::Boolean.boolean}
      isIgiExotic  {Faker::Boolean.boolean}
      hasRestriction  {Faker::Boolean.boolean}
      targetClientList  {Faker::Name.name}
      minimumInvestmentAmount  {Faker::Commerce.price}
      vehicleType  {Faker::StarWars.vehicle} 
      redemptionPaymentPeriod  {"blah"}
      redemptionConversionPeriod {"blah"}
      totalShareHolders  {Faker::Number.number(1)}
      manager 
    end
end