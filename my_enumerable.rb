module MyEnumerable
  def all?
    ans = true
    each do |i|
      ans = false unless yield i
    end
    ans
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
