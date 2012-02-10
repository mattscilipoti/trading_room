module ActionHelpers
  def submit
    find("input[type='submit']").click
#    click_button('commit')
  end
end
World(ActionHelpers)

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
  test_comment = 'TEST_COMMENT'
  comment_locator = 'case_study_comment'
  fill_in comment_locator , :with => test_comment
  submit

  # ensure on correct page
  case_study = CaseStudy.find_by_comment(test_comment)
  step %(I should not see any errors)
  # step %(I should be viewing Ticker "#{@ticker}")
  step %(I should be on #{case_study_path(case_study)})

  #ensure comment present
  within("##{comment_locator}") do
    page.should have_content(test_comment)
  end
end

