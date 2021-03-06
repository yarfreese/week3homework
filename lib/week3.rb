
class Week3

  A_CONSTANT = "I'm a class CONSTANT"
  $global_var = "I'm a Global!"

  def initialize
    # Just something to do, that is not used here ??
    @name = 'Brandon'
  end

  def name  
    "#{@name}"
  end 

  def name= new_name
    return @name = new_name
    # these all work after @name = new_name
    # name 
    # "#{@name}"
    # return @name
  end 
    
  def run_me 
    "I'm running your code!" #{yield if block_given?}"
    # the following 4 lines work 
    # result = "I'm running your code!"
    # if block_given?
    #   result << yield 
    # end
    # the following 3 lines work
    #  result = "I'm running your code!"
    #  result << yield if block_given?
    #  result
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

#  def configure(args={})
#    return defaults = {
#      :path    => "./", 
#      :version => "0.1.0", 
#      :mode    => "production"}.merge(args) if args
#  end

end
