Then(/^I should see the logo$/) do
  expect(@homepage).to have_logo
end

Then(/^I should see the description$/) do
  expect(@homepage).to have_description
end