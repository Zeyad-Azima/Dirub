require 'net/http'
require 'time'

puts """
      @Zeyad-Aziam
·▄▄▄▄  ▪  ▄▄▄  ▄• ▄▌▄▄▄▄·
██▪ ██ ██ ▀▄ █·█▪██▌▐█ ▀█▪
▐█· ▐█▌▐█·▐▀▀▄ █▌▐█▌▐█▀▀█▄
██. ██ ▐█▌▐█•█▌▐█▄█▌██▄▪▐█
▀▀▀▀▀• ▀▀▀.▀  ▀ ▀▀▀ ·▀▀▀▀
          Dirub
Directory-Bruteforcer in Ruby

"""

puts "Enter your Target Domain or Domain with Directory(ex: 'google.com' or a directory 'google.com/profiles'): "
host=gets.chomp.to_s
puts"Enter Target Protocol(ex: 'http' or 'https'): "
protcl=gets.chomp.to_s
puts "Enter Wordlist file(ex: php.txt): "
file=gets.chomp.to_s
puts ""
puts "[+] Using #{file} as a wordlist on #{host} used protocol is #{protcl}"
puts "[+] Starting Attack...."
puts ""
sleep(5)
File.readlines(file).each do |line|
  uri = URI(protcl+'://'+host+'/'+line.chomp)
  res = Net::HTTP.get_response(uri)
  puts "[#{res.code}]: #{line}"
end
