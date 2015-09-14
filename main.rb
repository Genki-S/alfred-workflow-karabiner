require_relative './karabiner'

query = ARGV.first
karabiner = Karabiner.new
profiles = karabiner.run('list').chomp.split("\n")

def item_xml(options = {})
  <<-ITEM
  <item arg="#{options[:arg]}">
    <title>#{options[:title]}</title>
  </item>
  ITEM
end

items = profiles.select { |p| p.match(/#{query}/i) }.map do |prof|
  item_xml(
    arg: prof.split(':').first, # extract the profile id
    title: "Switch profile to #{prof}",
  )
end

puts  "<?xml version='1.0'?>\n<items>\n#{items.join}</items>"
