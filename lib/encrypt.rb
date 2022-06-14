require './lib/enigma'
require './lib/key'
require './lib/offset'

enigma = Enigma.new

encrypted = enigma.encrypt

encrypted_file = File.open("lib/#{ARGV[1]}", "w").write(encrypted[:encryption])

puts "Created #{ARGV[1]} with the key #{encrypted[:key]} and date #{encrypted[:date]}"
