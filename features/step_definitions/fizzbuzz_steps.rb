Given /^I am on the main screen$/ do
  @fizzbuzz = page(FizzBuzzPage)
end

When /^I set the value to "(.*?)"$/ do |value|
  value.to_i.times do
    @fizzbuzz.increment
  end
end

When /^I increment the value "(.*?)" times$/ do |times|
  times.to_i.times do
    @fizzbuzz.increment
  end
end

When /^I decrement the value "(.*?)" times$/ do |times|
  times.to_i.times do
    @fizzbuzz.decrement
  end
end

Then /^I see a value of "(.*?)"$/ do |expected|
  expect(@fizzbuzz.the_number).to eq(expected)
end

Then /^I see a result of "(.*?)"$/ do |expected|
  expect(@fizzbuzz.the_response).to eq(expected)
end
