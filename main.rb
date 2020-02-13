fileName = []
outputListName = "playlist.m3u"
thisFile = "main.rb"

Dir.foreach('.') do |item|
  next if item == '.' or item == '..' or item == outputListName or item == thisFile or item.start_with?(".")
  fileName.push("./" + item)
end

fileName.sort!

File.open(outputListName, "w") do |f|
  fileName.each { |s| f.puts(s) }
end
