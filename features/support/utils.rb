def  removeTextoAposSimbolo(string, array)
    array.each do |array|
      index = string.index(array)
      string = string[0...index] if index
    end
    string
  end