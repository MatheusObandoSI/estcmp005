fibonacciAux n res prev 
    | n == 0 = res 
    | n == 1 = res 
    | otherwise = fibonacciAux (n - 1) (res + prev) res

fibonacciTail n 
    | n == 0 = 0
    | n == 1 = 1
    | otherwise = fibonacciAux n 1 0

main = print (fibonacciTail 1000)

--ghc fibonacciTail.hs && ./fibonacciTail +RTS -s