require_relative './karabiner'

query = ARGV.first
karabiner = Karabiner.new
karabiner.run 'select', query
