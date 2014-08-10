main = interact inputSet
  inputSet (x:xs) = x + inputSet xs
  inputSet _ = 0
