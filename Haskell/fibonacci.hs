fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci (n-1) + fibonacci (n-2)

main = print (fibonacci 50)

--ghc fibonacci.hs && ./fibonacci +RTS -s