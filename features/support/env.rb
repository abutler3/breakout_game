$LOAD_PATH << File.expand_path('../../../lib', __FILE__)

require 'breakout'

# Cucumber will load features/support/env.rb, which now requires lib/code-breaker.rb,
# which, in turn, requires lib/codebreaker/game.rb, which is where we defined the
# Codebreaker module with the Game with an empty start() method
