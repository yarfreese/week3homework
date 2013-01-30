
class Week3

  A_CONSTANT = "I'm a class CONSTANT"
  $global_var = "I'm a Global!"

  def initialize
    # Just something to do, that is not used here ??
    @name = 'Brandon'
  end

  def new(name)  
    @name = name
  end 

  def run_me 
    result = "I'm running your code!"
    # the following works too
    # if block_given?
    #   result << yield 
    # end
    result << yield if block_given?
    result
  end

  def each_odd arry
    # the following line works too . . . 
    # arry.map { |x| x if x%2 != 0 }.compact 
    result = []
    arry.each do |x|
      print x%2
      if x%2 != 0
        result.push(x)
      end
    end
    result
  end
  
  def halve arry
    sz = arry.size/2
    result = []
    (0..sz-1).each do |x|
      result.push(arry[x])
    end
    result
  end
  
  def halve! arry
    sz = arry.size/2
    result = []
    (sz..arry.size-1).each do |x|
      arry.pop
    end
    arry
  end

  def even? i
    if i.class == String
      i = i.to_i 
    end
    if i%2 == 0
      true
    else
      false 
    end
  end
end
