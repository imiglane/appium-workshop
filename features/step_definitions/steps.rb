# These are the 'step definitions' which Cucumber uses to implement features.
#
# Each step starts with a regular expression matching the step you write in
# your feature description.  Any variables are parsed out and passed to the
# step block.
#
# The instructions in the step are then executed with those variables.
#
# In this example, we're using rspec's assertions to test that things are happening,
# but you can use any ruby code you want in the steps.
#
# The '$driver' object is the appium_lib driver, set up in the cucumber/support/env.rb
# file, which is a convenient place to put it as we're likely to use it often.
# This is a different use to most of the examples;  Cucumber steps are instances
# of `Object`, and extending Object with Appium methods (through
# `promote_appium_methods`) is a bad idea.
#
# For more on step definitions, check out the documentation at
# https://github.com/cucumber/cucumber/wiki/Step-Definitions
#
# For more on rspec assertions, check out
# https://www.relishapp.com/rspec/rspec-expectations/docs


Given /^I am on create filter page$/ do
  @tests.filters_test.close_intro
end
Given /^I open transports params$/ do
  @tests.filters_test.open_filter_params
end
Given /^I submit filter/ do
  @tests.filters_test.submit_filter
end

Given /^I close buy page/ do
  @tests.filters_test.close_buy_more
end
Given /^I open property params$/ do
  @tests.filters_test.open_property_params
end
Given /^I submit property filter/ do
  @tests.filters_test.submit_property
end
Given /^I open vacancy params$/ do
  @tests.filters_test.open_vacancy_params
end
Given /^I submit vacancy filter/ do
  @tests.filters_test.submit_vacancy
end





Given /^I open menu/ do
  @tests.filters_test.open_menu
end
Given /^I open saved filtres page/ do
  @tests.filters_test.open_search_filtre
end

Given /^I open saved filter/ do
  @tests.filters_test.open_saved_filter
end

Given /^I delete saved filter/ do
  @tests.filters_test.delete_filter
end

Given /^I verify it is deleted/ do
  @tests.filters_test.verify_deleted
end
