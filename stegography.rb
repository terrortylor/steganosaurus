require 'rubygems'
require './lib/image'

input_array = ARGV

if input_array.length < 2
  puts 'Missing input: <filename> <E(ncode)|D(ecode)> <Message>'
  exit
end

image_filename = input_array[0]
puts "Image file name: #{image_filename}"
encode_decode = input_array[1]
case encode_decode
when 'e', 'E'
  puts 'Encoding message...'
  image = Image.open(image_filename)
  image.encode_message(input_array[2])
  image.save_image
when 'd', 'D'
  puts 'Decoding Message...'
  image = Image.open(image_filename)
  puts image.decode_message
else
  puts 'Unrecognised encode/decode flag, exiting...'
  exit
end

# file = File.open('10x10.jpg', 'rb')
# binary = file.read(file.size)
# # data = binary.unpack('H*')[0]
# # data.chars.each_cons(4) {|a| p a}
# data = binary.unpack('H*')[0]
# puts data.index('ffda')
# puts data.index('ffd9')
# puts data.size - 4
# puts data[4..8]
#
# hex_image_data = ['ffd8ffe0ffda590b44f5671d0d0a41e02802c04d7fffffda'].pack('H*')
# puts hex_image_data
# data = hex_image_data.unpack('H*')[0]
# puts data.index('ffda')
