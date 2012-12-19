class Output
  def messages
    @messages ||= []
  end

  def puts(message)
    messages << message
  end
end

def output
  @output ||= Output.new
end

Given /^I am not yet playing$/ do
end

When /^I start a new game$/ do
  game = Breakout::Game.new(output)
  game.start
  # Give the game reference to the Output
end

Then /^I should see "(.*?)"$/ do |message|
  output.messages.should include(message)
  # Fake object should have a messages collection
end

# Given /^the secret code is "(.*?)"$/ do |arg1|
# end

# When /^I guess "(.*?)"$/ do |arg1|
# end

# Then /^the mark should be "(.*?)"$/ do |arg1|
# end
