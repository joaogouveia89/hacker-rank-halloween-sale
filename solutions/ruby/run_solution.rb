require 'colorize'
require './halloween_sale'

#input parsing and reading
input00 = File.open("../../test-cases/input/input00.txt")
input01 = File.open("../../test-cases/input/input01.txt")
input02 = File.open("../../test-cases/input/input02.txt")
input03 = File.open("../../test-cases/input/input03.txt")
input04 = File.open("../../test-cases/input/input04.txt")

data = input00.map(&:chomp)

input00 = data[0].split(" ").map(&:to_i)
p00 = input00[0]
d00 = input00[1]
m00 = input00[2]
s00 = input00[3]

data = input01.map(&:chomp)

input01 = data[0].split(" ").map(&:to_i)
p01 = input01[0]
d01 = input01[1]
m01 = input01[2]
s01 = input01[3]

data = input02.map(&:chomp)

input02 = data[0].split(" ").map(&:to_i)
p02 = input02[0]
d02 = input02[1]
m02 = input02[2]
s02 = input02[3]

data = input03.map(&:chomp)

input03 = data[0].split(" ").map(&:to_i)
p03 = input03[0]
d03 = input03[1]
m03 = input03[2]
s03 = input03[3]

data = input04.map(&:chomp)

input04 = data[0].split(" ").map(&:to_i)
p04 = input04[0]
d04 = input04[1]
m04 = input04[2]
s04 = input04[3]

# problem application
start = Time.now
response00 = halloween_sale p00, d00, m00, s00
response01 = halloween_sale p01, d01, m01, s01
response02 = halloween_sale p02, d02, m02, s02
response03 = halloween_sale p03, d03, m03, s03
response04 = halloween_sale p04, d04, m04, s04
finish = Time.now

puts("solved all the test cases in " + (1000 * (finish - start)).round(2).to_s + "ms")

#expected outputs
start = Time.now
output00File = File.open("../../test-cases/output/output00.txt")
output01File = File.open("../../test-cases/output/output01.txt")
output02File = File.open("../../test-cases/output/output02.txt")
output03File = File.open("../../test-cases/output/output03.txt")
output04File = File.open("../../test-cases/output/output04.txt")

data = output00File.map(&:chomp)
output00 = data[0].to_i

data = output01File.map(&:chomp)
output01 = data[0].to_i

data = output02File.map(&:chomp)
output02 = data[0].to_i

data = output03File.map(&:chomp)
output03 = data[0].to_i

data = output04File.map(&:chomp)
output04 = data[0].to_i

if response00 === output00
	puts "INPUT 00".green
else
	puts "INPUT 00".red
end

if response01 === output01
	puts "INPUT 01".green
else
	puts "INPUT 01".red
end

if response02 === output02
	puts "INPUT 02".green
else
	puts "INPUT 02".red
end

if response03 === output03
	puts "INPUT 03".green
else
	puts "INPUT 03".red
end

if response04 === output04
	puts "INPUT 04".green
else
	puts "INPUT 04".red
end