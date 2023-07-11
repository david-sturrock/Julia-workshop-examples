function half_then_sqrt( input )
    # This function outputs the square root of half of the input
    # Note that it performs the square root element-wise on arrays

    output = (input/2).^(1/2)
    
    return output
end