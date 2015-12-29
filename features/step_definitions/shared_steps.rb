Given(/^the app is properly setup$/) do
  @homepage = HomePage.new
end

When /^I visit the homepage$/ do
  @homepage.load
end