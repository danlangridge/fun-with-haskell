drawLine :: Int -> Int -> [Char]
drawLine n width
  | n == width + 1 = ['0']
  | otherwise = drawLine (n + 1) width ++ ['0']

drawGraph :: Int -> Int -> Int -> [Char]
drawGraph n height width
  | n == height * 2 - 1  = drawLine 0 width ++ ['\n']
  | otherwise = drawLine 0 width ++ ['\n'] ++ drawGraph (n + 1) height width

sineWave :: Float -> Float -> [Float]
sineWave n timestep
  | n <= 0.0 = [sin (0)]
  | otherwise = sineWave (n - 1 * timestep) timestep ++ [sin (n)]

visualize n height width = putStr (drawGraph n height width)
