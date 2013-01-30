$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)
require 'week3'

describe 'Week3 block method' do

  subject{ Week3.new }

  # TODO: Write the spec and the code
  it '#run_me yields to a block' do 
    subject.run_me { " POW!" }.should eq "I'm running your code! POW!" 
    # subject.run_me{ print "POW!" }.should yield_control 
    # subject.run_me.should yield_control
    # subject.run_me.should yield
    # run_me(subject).to yield_control 
    # expect  { |b| subject.run_me() }.to yield_control 
    # Above is some of what I've tried
  end

  # TODO: Write the spec and the code
  # method should take one parameter, an array of integers.
  #   ok to assume items are integers.
  # the method should return an array of integers.
  #   but it should ignore the even items.
  # method is an iterator, like #each, that goes through each item
  #   in the array passed in.
  # block can be the second parameter, or implicit.
  it '#each_odd iterates an array and yields the odd values to the block' do
    subject.each_odd([1,2,3,4]).should eq [1,3]    
  end

end

