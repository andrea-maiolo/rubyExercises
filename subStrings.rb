#Implement a method #substrings that takes a word as the first argument 
#and then an array of valid substrings (your dictionary) as the second argument. 
#It should return a hash listing each substring
#(case insensitive) that was found in the original string and how many times it was found.


def substring(string,array)
  #this make thestring easy to work with
  string = string.downcase
  #create a new empty hash
  obj = Hash.new
  #for every ele in array put it in a regex and check if match the string
  for ele in array do
    regex = /#{ele}/
    if string.scan(regex)   
      obj[ele]= string.scan(regex)
    end
  end
  obj.each do |key,value|
    c =0 
    for e in value do
      c +=1
    end
    obj[key] = c
    if obj[key] == 0
      obj.delete(key)
    end
  end
  puts obj
end
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
#substring("iii", dictionary)
substring("Howdy partner, sit down! How's it going?", dictionary)
