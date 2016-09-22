# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
2.times { FactoryGirl.create(:user) }
5.times { FactoryGirl.create(:manager) }
5.times { FactoryGirl.create(:portfolio) }
10.times { FactoryGirl.create(:fund) }

