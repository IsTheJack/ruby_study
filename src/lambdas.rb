# Good links
## https://www.rubyguides.com/2016/02/ruby-procs-and-lambdas/

## In Ruby: A lambda is a way to define a block & its parameters with some special syntax.

my_first_lambda = ->(x, y, z) { puts x + y + z }

## I need to use '.call' to call lambdas
puts my_first_lambda.call(1, 2, 3)

without_args = -> { puts 'no args' }

puts without_args.call

multi_line_lambda = lambda do |x|
  puts x * 2
end

multi_line_lambda.call(10)

## Lambdas accept recursion
accept_recursion = lambda do |n|
  if n.zero?
    1
  else
    n * accept_recursion.call(n - 1)
  end
end

puts accept_recursion.call(3)

## Let's try lambdas as first class citizens

def get_operation(operator)
  if operator == 'sum'
    ->(a, b) { a + b }
  elsif operator == 'minus'
    ->(a, b) { a - b }
  end
end

puts get_operation('sum').call(1, 9)
