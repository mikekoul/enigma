require './lib/enigma'
require './lib/key'
require './lib/offset'

message = File.open(ARGV[0], "r").read.downcase.chomp

enigma = Enigma.new(message)


encrypted = enigma.encrypt(message)

encrypted_file = File.open(ARGV[1], "w").write(encrypted[:encryption])

puts "Created #{ARGV[1]} with the key #{encrypted[:key]} and date #{encrypted[:date]}"
