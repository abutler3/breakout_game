module Breakout
  class Game
    def initialize(output)
      @output = output
    end

    def start
      @output.puts 'Welcome to Breakout'
      @output.puts 'Enter guess:'
    end
  end
end
