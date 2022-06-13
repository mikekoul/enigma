require './lib/enigma'
require './lib/key'
require './lib/offset'

enigma = Enigma.new

encrypted = File.open("lib/#{ARGV[1]}", "w").write(message[:encryption])

puts "Created #{ARGV[2]} with the key #{message[:key]} and date #{message[:date]}"
