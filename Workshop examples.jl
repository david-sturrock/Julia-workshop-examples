## SIMPLE OPERATIONS ##

# Define a column vector
A = [1, 2, 3]

# Define a row vector
B = [1 2 3]

# Matrix multiplication
C = B*A

# Element-wise multiplication
D = A.*A

## DEFINING A FUNCTION ##

# Define the function 
function square_then_double( input )
    # This function outputs the twice the square of the input
    
    output = 2 * (input.^2)
    
    return output
end

# Call the function
E = square_then_double(A)

# Include a saved function
include("functions/half_then_sqrt.jl")

test = half_then_sqrt(square_then_double(A)) - A

# Print output if running non-interactively
println(test)

# Illustrate de-bugger

# SOME OTHER BITS AND PIECES

# For loops 
squareNums = zeros(10)
for i = 1:1:10
    squareNums[i] = i^2
end

# While loops 
error = 100
while error > 0.1
    error = error / 2
    println(error)
end

# If 
if error < 101
    error = error*2
    println(error)
elseif error > 150
    error = error / 2
    println(error)
else
    println(error)
end


# Repeating arrays 
squareSquares = repeat(squareNums,1,10)

# Selecting elements of arrays
select = squareSquares[1:8,1:4]