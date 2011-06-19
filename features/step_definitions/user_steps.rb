Given /^there are no operating vendors$/ do
  pending
end
When /^I view all operating vendors$/ do
  @vendors = Vendor.operating
end
Then /^I should see that there are no vendors that are operating$/ do
  @vendors.should == []
end