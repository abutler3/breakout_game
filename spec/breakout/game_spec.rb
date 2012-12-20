require 'spec_helper'
#Requires a file named spec_helper.rb in the spec directory
# Gets added to global $LOAD_PATH

module Breakout
# Declares a Ruby module
  describe Game do
  # The describe() method hooks into RSpec’s API and returns a
  # subclass of RSpec::Core::ExampleGroup. As its name suggests,
  # this is a group of examples of the expected behavior of an object.
  # If you’re accustomed to xUnit tools like Test::Unit, you can
  # think of an ExampleGroup as being akin to a TestCase.
    describe "#start" do
      let(:output) { double('output'). as_null_object }
      let(:game) { Game.new(output) }
      # it "sends a welcome message" do
      # The it() method creates an example. Technically, it’s an
      # instance of the ExampleGroup returned by describe()
        # output = double('output').as_null_object
        # GIVEN. Test double stand in for the real STDOUT
        # Uses RSpec dynamic test double framework, RSpec::Mocks
        # to create a dynmaic test double on the first
        # line of the example
        # @game = Game.new(@output)
        # GIVEN. Create a Game object, passing it the test double
        # as an argument
      # end

      it "sends a welcome message" do
        output.should_receive(:puts).with('Welcome to Breakout')
        # MESSAGE EXPECTATION. The output object should
        # receive the puts message with the string "Welcome to Breakout"
        # as the only argument. if it does, it passes. If not, failure.
        game.start
        # Send the game the start message on the last line
        # Call game.start, output should receive puts("Welcome to Breakout")
      end
      it "prompts for the first guess" do
        # output = double('output').as_null_object
        # Caused the first test to fail.
        # We’ve told the double in the first example to expect puts() with
        # “Welcome to Breakout!” and we’ve satisfied that requirement, but
        # we’ve only told it to expect “Welcome to Breakout!” It doesn’t know
        # anything about “Enter guess:”
        # Similarly, the double in the second example expects “Enter guess:”
        # but the first message it gets is “Welcome to Codebreaker!”
        # Solution: Add as_null_object
        # game = Game.new(output)

        output.should_receive(:puts).with('Enter guess:')

        game.start
      end
    end
  end
end
