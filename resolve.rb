class Resolve
    def factorial(num)
        raise 'Negative integer not allowed' if num.negative?
    
        result = 1
        (1..num).each do |i|
          result *= i
        end
    
        result
      end
      
      def reverse(word)
        word.reverse
      end
    
end