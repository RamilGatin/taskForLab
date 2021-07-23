iterations = 8
print "Всего будет #{iterations} итераций:\n\n"

current = "1"
puts current

(1...iterations).each do |n|
  output = ""
  chunks = current.chars.chunk_while {|x, y|
    x == y
  }.map(&:join)
  chunks.each {|chunk|
    output += chunk.size.to_s + chunk[0]
  }
  puts output
  current = output
end
