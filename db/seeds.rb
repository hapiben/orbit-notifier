# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

origins = Origin.create([{
  name: 'New Zealand',
  country_code: 'nz',
  currency_name: 'New Zealand Dollar',
  currency_code: 'NZD'
}, {
  name: 'Australia',
  country_code: 'au',
  currency_name: 'Australian Dollar',
  currency_code: 'AUD'
}])