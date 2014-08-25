module Main where

f :: Int -> Int -> Int
f x y = x*x + y*y

g :: Num a => a -> a -> a -> a
g v p t = t*v + p

v :: Int
v = 1
p :: Int
p = 2
t :: Int
t = 3	

even n = mod n 2 == 0

fib 0 = 0
fib 1 = 1
fib n = fib (n-1) + fib(n-2)

main :: IO ()
main = do 
	print "Hello, World!"	
	name <- getLine
	print ("Hello " ++ name ++ "!")
	print (f 2 3)
	print (g v p t)
	print (fib 20)
