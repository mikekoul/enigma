require './lib/enigma'
require './lib/key'
require './lib/offset'

enigma = Enigma.new

decrypted = enigma.decrypt(ARGV[2], ARGV[3])


File.open("./lib/#{ARGV[1]}", "w").write(decrypted[:decryption])

puts "Created #{ARGV[1]} with the key #{decrypted[:key]} and date #{decrypted[:date]}"
