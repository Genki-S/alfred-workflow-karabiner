require_relative './karabiner'

query = ARGV.first
karabiner = Karabiner.new
karabiner.switch(query)
