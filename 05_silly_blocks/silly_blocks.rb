def reverser(&block)
  block.call.split(/\W/).map(&:reverse).join(" ")
end

def adder(initial = 1)
  initial + (block_given? ? yield : 0)
end

def repeater(times = 1)
  times.times { yield }
end