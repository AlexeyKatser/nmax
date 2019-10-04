def nmax(fname, n)
	$mass = []
	File.open(fname) do |file| 
		md = file.read.scan(/\d{1,1000}/)
		md.to_a.each do |num|
			addToArray(num.to_i, n)	
		end
	end
end 

def addToArray(num, n)
	if $mass.length < n
		$mass << num	
	else
		#$mass.sort!
		if num > $mass.min
			$mass << num
			$mass.delete_at($mass.index($mass.min))
		end
	end
end


unless ARGV.length == 2  
	puts 'Wrong number of arguments!'
	return
end

n = ARGV[1].to_i 
fname = ARGV[0]
nmax fname, n 
	
puts "Max numbers are #{$mass.join(', ')}"