When /^I visit the homepage$/ do
  visit '/'
end

Then /^I should see the homepage$/ do
  page.has_selector?('title',  :text => 'BBC SPORT')
end
