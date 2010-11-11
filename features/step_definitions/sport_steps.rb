When /^I visit the homepage$/ do
  visit '/'
end

When /^I follow the football navigation$/ do 
  debugger
  within(selector) do
    click_link(link)
  end
  debugger
  1
end

Then /^I should see the homepage$/ do
  page.has_selector?('title',  :text => 'BBC SPORT')
end


When /^I navigate from the homepage to the "([^"]*)" team page$/ do |team|
  visit '/'
  page.find(:css, "a.lhsnl", :text => "Football").click
  page.find(:css, "a.lhsnl", :text => "My Club").click
  page.find(:css, "a.lp", :text => team.upcase).click

end

Then /^I should be on the "([^"]*)" team page$/ do |team|
  page.find(:css, ".sectionHeader", :text => team).should be_true
end
