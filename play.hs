module Main where

f :: Int -> Int -> Int
f x y = x*x + y*y

g :: Num a => a -> a -> a -> a
g v p t = t*v + p

main :: IO ()
main = do 
	print "Hello, World!"
	let x = 1
	name <- getLine
	print ("Hello " ++ name ++ "!")
	print (f 2 3)
	print ("At time " ++ "1" ++ " At Starting Position " ++ "2" ++ " with Velocity " ++ "3")
	print ("The new position is ")
	print (g 3 2 1)
