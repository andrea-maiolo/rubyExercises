puts "length of password: 8, 12 ,16"
   def alphabetRandom
      alphabet = 'abcdefghijklmnopqrstuvwxyz'.split(//)
      aIndex = (rand()*21).to_i
      ra = alphabet[aIndex]
      return ra
    end

    def alphabetUpperRandom
      alphabetUppercase = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'.split(//)
      uIndex = (rand()*21).to_i
      ru = alphabetUppercase[uIndex]
      return ru
    end  

    def numberRandom
      numbers = [0,1,2,3,4,5,6,7,8,9]
      nIndex = (rand()*10).to_i
      rn = numbers[nIndex]
      return rn
    end  

    def weirdRandom
      weird = '&^%)~#*'.split(//)
      wIndex = (rand()*7).to_i
      rw = weird[wIndex]
      return rw
    end

    def passwordGenerator(n)
        password =''
        n = n.to_i
      def randomCall
        selection = (rand()*4).to_i
          case selection
            when 0 then alphabetRandom()
            when 1 then alphabetUpperRandom()
            when 2 then numberRandom()
            when 3 then weirdRandom()
          end
      end

      while password.length < n do 
        password += randomCall().to_s
      end

      puts password

    end

#puts "length of password: 8, 12 ,16"
n = gets.chomp

passwordGenerator(n);