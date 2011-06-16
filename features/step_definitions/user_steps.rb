Given /^a user exists with email "([^"]*)" and password "([^"]*)"$/ do |email, password|
  visit sign_up_path
  fill_in "Email", :with => email
  fill_in "Password", :with => password
  fill_in "Password confirmation", :with => password
  click_button "Create User"
end

Given /^I am logged in as "([^"]*)" with password "([^"]*)"$/ do |email, password|
  visit log_in_path
  fill_in "Email", :with => email
  fill_in "Password", :with => password
  click_button "Log in"
end

