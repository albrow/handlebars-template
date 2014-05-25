require "rubygems"
require "listen"

listener = Listen.to('handlebars') do |modified, added, removed|
  puts "modified: #{modified}" if !modified.empty?
  puts "added: #{added}" if !added.empty?
  puts "removed: #{removed}" if !removed.empty?
  system `handlebars handlebars/*.handlebars -f javascript/templates.js`
end
listener.start # not blocking
sleep