
Given(/^I am on Google Form Page$/) do
  @google_form = GoogleForm.new(@browser)
  @google_form.visit
end

Then(/^Submit the form$/) do
  sleep 3
  @google_form.submit_details
  sleep 5
end

When(/^Fill details on form$/) do
  @google_form.fill_details
end