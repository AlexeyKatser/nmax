class Nmax
	def self.run n
		return 2 if n.nil? || n <= 0
		return 3 if STDIN.tty?
		md = STDIN.read.scan(/\d{1,1000}/).map(&:to_i).sort { |a, b| b <=> a }.first(n)	
		p "Max numbers are: #{md.join(', ')}"
		return md
	end
end

#Nmax.run  2