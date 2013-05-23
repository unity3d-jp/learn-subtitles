#! ruby -Ku
# -*- coding: utf-8 -*-

require 'kconv'

author = "gamesonytablet"

while line = STDIN.gets
  #STDOUT.puts "input text: #{line}"
  tmpFileName = line.chop()
  if File.file?(tmpFileName) == false 
    puts "Cant open:[" + tmpFileName + "]"
    next
  end
  
  dwFileName = tmpFileName
  f = open(dwFileName)
  str = f.read
  f.close()

  newFileName = File.dirname(tmpFileName) + "/" + File.basename(tmpFileName) 
  fn = open(newFileName, "w")
  fn.write(str)
  
  fn.write("(翻訳:" + author + ")\n")
  fn.close()
        

end
