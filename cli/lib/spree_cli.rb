require 'thor'
require 'thor/group'

puts 'rails8_spree_cli loaded'

case ARGV.first
when 'version', '-v', '--version'
  puts Gem.loaded_specs['spree_cli'].version
when 'extension'
  ARGV.shift
  require 'spree_cli/extension'
  SpreeCli::Extension.start
end
