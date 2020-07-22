frogs = (1..10).to_a.reverse

frogs.each do |number|
  if number > 1
   print  "#{number} speckled frogs sat on a log\neating some most delicious bugs.\nOne jumped in the pool where its nice and cool,\nthen there were #{number - 1} speckled frogs.\n\n"
  else
  print   "#{number} speckled frog sat on a log\neating some most delicious bugs.\nOne jumped in the pool where its nice and cool,\nthen there were no more speckled frogs."
end
end
