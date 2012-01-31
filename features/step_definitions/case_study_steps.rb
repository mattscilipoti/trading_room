Given /^I am creating a CaseStudy for "([^"]*)"$/ do |ticker|
  asset = Asset.find_by_ticker(ticker)
  visit(new_case_study_path(:asset => asset))
end

