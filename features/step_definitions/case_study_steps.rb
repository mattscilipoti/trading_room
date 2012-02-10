Given /^I am creating a Case Study for "([^"]*)"$/ do |ticker|
  @ticker = Ticker.find_by_ticker(ticker)
  visit(new_ticker_case_study_path(@ticker))
end

Then /^the period should be "([^"]*)"$/ do |period|
  within('#period') do
    assert page.has_content?(period)
  end
end

Then /^I should be able to leave a Comment$/ do
  pending # express the regexp above with the code you wish you had
end

