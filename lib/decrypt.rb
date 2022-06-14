require './lib/enigma'
require './lib/key'
require './lib/offset'

message = File.open(ARGV[0], "r").read.downcase.chomp

enigma = Enigma.new(message, ARGV[2])

decrypted = enigma.decrypt(message, ARGV[2], ARGV[3])


File.open(ARGV[1], "w").write(decrypted[:decryption])

puts "Created #{ARGV[1]} with the key #{decrypted[:key]} and date #{decrypted[:date]}"
