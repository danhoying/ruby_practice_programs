command = ''
bye_count = 0

while bye_count < 3
     puts "HUH?! SPEAK UP, SONNY!"
     command = gets.chomp
     if command == command.upcase and command != '' and command != "BYE"
          puts "NO, NOT SINCE " + rand(1930..1950).to_s
          bye_count = 0
     elsif command == "BYE"
          bye_count += 1
     end
end
     
