def monty(switch)
  chosen = (Random.new).rand(1..3)
  answer = (Random.new).rand(1..3)
  if chosen == answer
    switch ? 0 : 1
  else
    switch ? 1 : 0 
  end
end

[true, false].each do |switch|
  win = 0
  10000.times do
    win += monty(switch)
  end
  puts "probability of winning is #{(win.to_f/10000 * 100).round}% with #{switch ? "switching" : "not switching"}"
end