-- SimpleCalculator.hs

-- Define basic arithmetic functions
add :: Int -> Int -> Int
add x y = x + y

subtract' :: Int -> Int -> Int
subtract' x y = x - y

multiply :: Int -> Int -> Int
multiply x y = x * y

divide :: Int -> Int -> Float
divide x y = fromIntegral x / fromIntegral y

-- Main function
main :: IO ()
main = do
    putStrLn "=== Haskell Simple Calculator ==="
    putStrLn "Enter first number:"
    xInput <- getLine
    putStrLn "Enter second number:"
    yInput <- getLine
    putStrLn "Choose operation (+, -, *, /):"
    op <- getLine

    let x = read xInput :: Int
        y = read yInput :: Int
        result = case op of
            "+" -> show (add x y)
            "-" -> show (subtract' x y)
            "*" -> show (multiply x y)
            "/" -> if y /= 0 then show (divide x y) else "Cannot divide by zero"
            _   -> "Invalid operation"

    putStrLn ("Result: " ++ result)
