Given(/^a signed out user$/) do
  # this doesn't need any explicit action
end

When(/^he visits the home page$/) do
  visit "/"
end

Then(/^he should see "(.*?)"$/) do |text|
  page.should have_content(text)
end

When(/^he signs in with GitHub$/) do
  click_on "Sign In"
  page.should have_content("Sign In With GitHub")
  click_on "Sign In With GitHub"
end

When(/^he fails the sign in with GitHub$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^User\.count should == (\d+)$/) do |arg1|
  User.count.should == arg1.to_i
end

Then(/^Authentication\.count should == (\d+)$/) do |arg1|
  Authentication.count.should == arg1.to_i
end
