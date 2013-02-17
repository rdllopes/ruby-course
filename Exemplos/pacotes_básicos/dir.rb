Dir.glob("*") { |file|
  puts file
  puts File.open(file){ |f|
    f.read
  }
  puts "\n\n\n\n\n\n\n"
}