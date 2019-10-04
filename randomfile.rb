require 'securerandom'

def write 
	File.open('test.txt', 'w+') do |file|
		10000.times do 
			file.puts (SecureRandom.hex + SecureRandom.hex + SecureRandom.hex)
		end
	end
end

write