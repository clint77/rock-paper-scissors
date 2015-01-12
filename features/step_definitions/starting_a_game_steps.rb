When(/^I click on "(.*?)"$/) do |arg1|
  find("##{arg1}").click
end
