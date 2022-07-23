module MyEnumerable
    def all?
        answer = true
        each do |i|
          answer = false unless yield i
        end
        answer
    end

    def any?
      answer = false
      each do |i|
        answer = true if yield i
      end
      answer
    end
  
    def filter
      array = []
      each { |i| array.push(i) if yield(i) }
      array
    end
end
