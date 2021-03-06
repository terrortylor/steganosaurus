# Image Steganography
This is a small application written as a steganography exercise.
Nothing fancy, just a bit of fun.

Currently supports:
* BMP (BM header only)

# Refernce Links
Useful references used when working on this project

* [Ruby Pack/Unpack](https://www.rubydoc.info/stdlib/core/String:unpack)
* [BMP File Format](https://en.wikipedia.org/wiki/BMP_file_format)
* [Working with Binary Files Example](https://www.visuality.pl/posts/cs-lessons-001-working-with-binary-files)
* [rspec expect vs expect block](https://stackoverflow.com/questions/19960831/rspec-expect-vs-expect-with-block-whats-the-difference) Hadn't come across this before strangely!
* [jpeg interchangeable file format](https://en.wikipedia.org/wiki/JPEG_File_Interchange_Format)
* [jpeg file format](https://en.wikipedia.org/wiki/JPEG)

# Setup / Run
```
bundle install
bundle exec rake
```

## Encode a message
```
ruby stegography.rb 10x10.bmp e "Super secret!"
```
## Encode a message from file
```
ruby stegography.rb 10x10.bmp e "${cat test.txt}"
```

## Decode a message
```
ruby stegography.rb modified-10x10.bmp d

Image file name: modified-10x10.bmp
Decoding Message...
Super secret�.�������;�����
```

# Example
## Original
![Original](10x10.bmp)
## Modified
![Modified](modified-10x10.bmp)
