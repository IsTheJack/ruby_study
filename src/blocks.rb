# Good links
## https://www.rubyguides.com/2016/02/ruby-procs-and-lambdas/

ages = [21, 26, 29, 60, 62, 31, 28]

# Recommended for one line blocks
double = ages.map { |n| n * 2 }

# Recommended for multiple line blocks

double_when_even = ages.map do |n|
  is_even = (n % 2).zero?
  if is_even
    n * 2
  else
    n
  end
end

[double, double_when_even].each do |output|
  puts output
  puts '------------------'
end

# Running block inside methods (functions)
def will_run_block
  # when you use yield, you'll call the block
  yield
  puts 'End'
end

will_run_block { puts 'Hello' }

# I can verify if a block exists before use it
def will_verify_before
  return 'No block' unless block_given?

  yield
end

puts will_verify_before

# I can work with explicit block passing
## I don't know why yet but I'll search about the pros and cons

def receive_block(&block)
  block.call # same as yield
end

receive_block { puts 'explicit block is interesting' }
