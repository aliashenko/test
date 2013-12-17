def reverse_array(input_array)

  if ( input_array.length > 0 )
    reverse_array( input_array[1..-1] ) << input_array[0]
  else
    []
  end
end
