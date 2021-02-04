require 'colorize'
require './halloween_sale'

#input parsing and reading
input00 = File.open("../../test-cases/input/input00.txt")
input01 = File.open("../../test-cases/input/input01.txt")

data = input00.map(&:chomp)

input00 = data[0].split(" ").map(&:to_i)
p00 = input00[0]
d00 = input00[1]
m00 = input00[2]
s00 = input00[3]

data = input01.map(&:chomp)

input01 = data[0].split(" ").map(&:to_i)
p01 = input00[0]
d01 = input00[1]
m01 = input00[2]
s01 = input00[3]


# problem application
start = Time.now
response00 = halloween_sale p00, d00, m00, s00
response01 = halloween_sale p01, d01, m01, s01
finish = Time.now

puts("solved all the test cases in " + (1000 * (finish - start)).round(2).to_s + "ms")

#expected outputs
start = Time.now
output00File = File.open("../../test-cases/output/output00.txt")
output01File = File.open("../../test-cases/output/output01.txt")

data = output00File.map(&:chomp)
output00 = data[0].to_i

data = output01File.map(&:chomp)
output01 = data[0].to_i

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