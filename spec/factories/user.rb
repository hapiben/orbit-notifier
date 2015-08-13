# encoding: UTF-8
require 'factory_girl'

FactoryGirl.define do
  factory :user, class: User do
    first_name    'Ben'
    last_name     'Lara'
    email         'ben@example.com'
  end
end