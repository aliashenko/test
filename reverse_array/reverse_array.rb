def reverse_array(input_array)
  return "NIL argument" if input_array == nil

  if ( input_array.length > 0 )
    reverse_array( input_array[1..-1] ) << input_array[0]
  else
    []
  end
end
